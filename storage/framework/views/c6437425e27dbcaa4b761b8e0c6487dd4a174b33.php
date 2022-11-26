

<?php $__env->startSection('content'); ?>

<link href="<?php echo e(('css/frontend-css/login.css')); ?>" rel="stylesheet">
<link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet">
<link href="<?php echo e(asset('css/frontend-css/about.css')); ?>" rel="stylesheet">


<div id="masthead">
    <div class=" container d-flex justify-content-center" style="margin-top: 190px;">
        <ul class="pagination shadow-lg">
            <li class="page-item"><a class="page-link" href="#"><i class="fa fa-home "></i> <small>Home</small> </a></li>
            <li class="page-item"><a class="page-link" href="#"><small>DETAILS &nbsp; </small></a></li>
        </ul>
    </div>

</div>

<div class="container">
    <div class="row">


        <div class="col-lg-4">
            <!-- Two factor authentication card-->
            <div class="card mb-4" style="padding: 10px; background-color:#fff">
                <div class="card-header">ACCOUNT</div>
                <div class="card-body" style="padding: 2px;">
                    <div id="filter-sidebar" class="col-xs-6 col-sm-12  sliding-sidebar" style="padding: 0px; background-color:#fff">

                        <div>
                            <div id="group-1" class="list-group collapse in">

                                <a class="list-group-item" href="#">
                                    <span class="badge">3</span> PROFILE
                                </a>

                                <a class="list-group-item" href="#">
                                    <span class="badge">3</span> CHANGE PASSWORD
                                </a>

                                <a class="list-group-item" href="#">
                                    <span class="badge">3</span> LOGOUT
                                </a>


                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="card mb-4" style="padding: 10px; background-color:#fff">
                <div class="card-header">Delete Account</div>
                <div class="card-body">
                    <p>Deleting your account is a permanent action and cannot be undone. If you are sure you want to delete your account, select the button below.</p>
                    <button class="btn btn-danger-soft text-danger" type="button">I understand, delete my account</button>
                </div>
            </div>
        </div>



        <div class="col-lg-8">
            <div class="card mb-4" style="background-color: #fff;">
                <div class="card-header">DETAILS
                </div>
                <div class="card-body" style="padding: 10px;">
                    <!-- Account privacy optinos-->
                    <?php $total = 0 ?>
                    <?php if(session('cart')): ?>
                    <?php $__currentLoopData = session('cart'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $id => $details): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php $total += $details['price'] * $details['quantity']

                    ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php endif; ?>

                    <form method="post" action="<?php echo e(route('payment')); ?>">
                        <?php echo csrf_field(); ?>

                        <div class="details row">
                            <div class="input col-lg-6">
                                <label for="">Name</label>
                                <input type="text" placeholder="Enter your Name" name="name">
                            </div>

                            <div class="input col-lg-6"><label for="">Phone No</label>
                                <input type="text" placeholder="Enter your Phone" name="phone">
                            </div>

                            <div class="input col-lg-6"><label for="">Email</label>
                                <input type="text" placeholder="Enter your Email" name="email">
                            </div>

                            <div class="input col-lg-6"><label for="">Address</label>
                                <input type="text" placeholder="Enter your Address" name="address">
                            </div>


                            <div class="input col-lg-6"><label for="">Amount</label>
                                <input type="text" placeholder="Amount" name="amount" value=<?php echo e($total); ?>>
                            </div>

                            <div class="input col-lg-6"><label for="">Date</label>
                                <input type="date" placeholder="Amount" name="date">
                            </div>

                            <div class="input col-lg-6">

                                <label for="">Time</label>

                                <?php
                                $start = "8:00am";
                                $end = "7:30pm";

                                $tStart = strtotime($start);
                                $tEnd = strtotime($end);
                                $tNow = $tStart;

                                ?>

                                <select id="time" name="time" class="form-control <?php $__errorArgs = ['time'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?> col-md-12" style="padding:5px; font-size:18px">
                                    <option value="0">-- Choose Time --</option>

                                    <?php while ($tNow <= $tEnd) { ?>

                                        <option> <?php echo date("H:i", $tNow) . "\n"; ?>
                                        </option>

                                    <?php $tNow = strtotime('+30 minutes', $tNow);
                                    }
                                    ?>
                                </select>

                            </div>

                            <div class="input col-lg-6">
                                <label for="">PAYMENT OPTION</label>

                                <span>
                                    <input type="radio" placeholder="Amount" name="pay_option" value="1" style="width:14px;height: 16px;float: left;clear: none;padding:7px;margin:4px 3px 0px 6px;">
                                    PAY NOW
                                </span>

                                <span>
                                    <input type="radio" placeholder="Amount" name="pay_option" value="2" style="width:14px;height: 16px;padding: 7px; float: left;clear: none;margin:4px 3px 0px 6px;">

                                    PAY ON ARRIVAL
                                </span>
                            </div>
                        </div>

                        <button class="login-button" type="submit">SUBMIT</button>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.mainlayout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\callabs\resources\views/layouts/frontend/user-details.blade.php ENDPATH**/ ?>