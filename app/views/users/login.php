<?php require APPROOT . '/views/inc/header.php'; ?>
<div class="row">
  <div class="col-md-6 mx-auto">
    <div class="card card-body bg-light mt-5">
      <?php flash('register_success'); ?>
      <h2>Login</h2>
      <p>Please fill in your credentials to log in</p>
      <form>
        <div class="form-group">
          <label for="email">Email: <sup>*</sup></label>
          <input type="email" name="email" id="email" class="form-control form-control-lg ">
        </div>
        <div class="form-group">
          <label for="password">Password: <sup>*</sup></label>
          <input type="password" name="password" id="password" class="form-control form-control-lg">
        </div>
        <div class="row">
          <div class="col">
            <!-- <input type="submit" value="Login" class="btn btn-success btn-block"> -->
            <button type="button" id="btn" class="btn btn-success btn-block">Login</button>
          </div>
          <div class="col">
            <a href="<?php echo URLROOT; ?>/users/register" class="btn btn-light btn-block">No account? Register</a>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>


  <script src="http://localhost/brief7/js/validation.js"></script>

<?php require APPROOT . '/views/inc/footer.php'; ?>
<script>
  
</script>