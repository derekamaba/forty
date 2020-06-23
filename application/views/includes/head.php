<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="<?php echo base_url('assets/css/bootstrap.min.css') ?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/css/datatables.min.css') ?>">
    <style>
    .error_login {
        display: none;
        color : red;
    }
    .field_error {
        color: RED;
        font-size: 12px;
    }
	.login-form {
		width: 340px;
    	margin: 50px auto;
	}
    .login-form form {
    	margin-bottom: 15px;
        background: #f7f7f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
    .login-form h2 {
        margin: 0 0 15px;
    }
    .form-control, .btn {
        min-height: 38px;
        border-radius: 2px;
    }
    .btn {
        font-size: 15px;
        font-weight: bold;
    }
    .table td , .table th {
        text-align: center;
    }
    .right_side {
        text-align: right;
        margin:  0 0 10px 0;
    }
</style>
</head>

<body class="">
    <input type="hidden" id="base" name="" value="<?php echo base_url(); ?>">
    <?php if ($this->session->userdata('isloggedin')): ?>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <a class="navbar-brand" href="#">Contact System</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
              <li class="nav-item active">
                <a class="nav-link" href="<?php echo base_url('home/logout') ?>">Logout<span class="sr-only">(current)</span></a>
              </li>

            </ul>
          </div>
        </nav>
    <?php endif; ?>
