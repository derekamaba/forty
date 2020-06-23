<div class="login-form">
    <form id="login" method="post">
        <h2 class="text-center">Sign In</h2>
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Email Address" name="email">
            <span class="field_error" ></span>
        </div>
        <div class="form-group">
            <input type="password" class="form-control" placeholder="Password" name="password">
            <span class="field_error" ></span>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">Submit</button>
        </div>
    </form>
    <p class="text-center"><a href="<?php echo base_url('login/registration') ?>">Create an Account</a></p>
</div>
