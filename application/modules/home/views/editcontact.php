<div class="login-form">
    <form id="editcontact" method="post">
        <input type="hidden" name="contact_id" value="<?= $contact->contact_id; ?>">
        <h2 class="text-center">Edit Contact</h2>
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Name" name="name" value="<?= $contact->name; ?>">
            <span class="field_error" ></span>
        </div>
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Company" name="company" value="<?= $contact->company;  ?>">
            <span class="field_error" ></span>
        </div>
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Phone" name="phone" value="<?= $contact->phone;  ?>">
            <span class="field_error" ></span>
        </div>
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Email" name="email" value="<?= $contact->email  ?>">
            <span class="field_error" ></span>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">Submit</button>
        </div>
    </form>
    <p class="text-center"><a href="<?php echo base_url('home') ?>">Back</a></p>
</div>
