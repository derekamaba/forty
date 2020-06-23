<div class="login-form">
    <form id="addcontact" method="post">
        <h2 class="text-center">Add Contact</h2>
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Name" name="name">
            <span class="field_error" ></span>
        </div>
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Company" name="company">
            <span class="field_error" ></span>
        </div>
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Phone" name="phone">
            <span class="field_error" ></span>
        </div>
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Email" name="email">
            <span class="field_error" ></span>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">Submit</button>
        </div>
    </form>
    <p class="text-center"><a href="<?php echo base_url('home') ?>">Back</a></p>
</div>
