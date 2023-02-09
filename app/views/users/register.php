<?php require APPROOT . '/views/inc/header.php'; ?>
  <div class="row">
    <div class="col-md-6 mx-auto">
      <div class="card card-body bg-light mt-5">
        <h2>Create An Account</h2>
        <p>Please fill out this form to register with us</p>
        <form>
          <div class="form-group">
            <label for="name">Name: <sup>*</sup></label>
            <input type="text" name="name" id="name" class="form-control form-control-lg">
          </div>
          <div class="form-group">
            <label for="email">Email: <sup>*</sup></label>
            <input type="email" name="email" id="email" class="form-control form-control-lg">
          </div>
          <div class="form-group">
            <label for="password">Password: <sup>*</sup></label>
            <input type="password" name="password" id="password" class="form-control form-control-lg">
          </div>
          <div class="form-group">
            <label for="confirm_password">Confirm Password: <sup>*</sup></label>
            <input type="password" name="confirm_password" id="password_C" class="form-control form-control-lg">
            <span class="invalid-feedback"></span>
          </div>

          <div class="row">
            <div class="col">
              <!-- <input type="submit" value="Register" class="btn btn-success btn-block"> -->
              <button type="button" id="btn_Register"  class="btn btn-success btn-block">Register</button>
            </div>
            <div class="col">
              <a href="<?php echo URLROOT; ?>/users/login" class="btn btn-light btn-block">Have an account? Login</a>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>

  <script>
  let btnRegister = document.querySelector("#btn_Register");
  let email = document.querySelector("#email");
  let name = document.querySelector("#name");
  let password = document.querySelector("#password");
  let password_C = document.querySelector("#password_C");

  btnRegister.addEventListener('click', function() {
    if (name.value == "") {
      Swal.fire({
  icon: 'error',
  title: 'Oops...',
  text: 'name rah khawi !',
  footer: '<a href="">Why do I have this issue?</a>'
})
    } else if (password.value == "") {
      Swal.fire({
  icon: 'error',
  title: 'Oops...',
  text: 'pass rah khawi!',
  footer: '<a href="">Why do I have this issue?</a>'
})
    } else if (password_C.value == "") {
      alert("pass conf rahkhawi");
    } else if (email.value == "") {
      Swal.fire({
  icon: 'error',
  title: 'Oops...',
  text: 'email rah khawi',
  footer: '<a href="">Why do I have this issue?</a>'
})
    }
   
    else {
      $.post('http://localhost/brief7/users/register', {
          name: name.value,
          email: email.value,
          password_C: password_C.value,
          password: password.value
        },
        function(dt) {
          // document.write(dt)
          if (dt == 1) {
            let timerInterval
          Swal.fire({
            title: 'Auto close alert!',
            html: 'I will close in <b></b> milliseconds.',
            timer: 2000,
            timerProgressBar: true,
            didOpen: () => {
              Swal.showLoading()
              const b = Swal.getHtmlContainer().querySelector('b')
              timerInterval = setInterval(() => {
                b.textContent = Swal.getTimerLeft()
              }, 100)
            },
            willClose: () => {
              clearInterval(timerInterval)
            }
          }).then((result) => {
            /* Read more about handling dismissals below */
            if (result.dismiss === Swal.DismissReason.timer) {
              console.log('I was closed by the timer')
            }
          })
            location.replace('http://localhost/brief7/users/login');
          } else if(dt == 'email') {
            alert('email deja kayne')
            // location.replace('login.php');
          }else if(dt == 'Passwords_diff'){
            alert('password makitchabhuch')
          }
          else if(dt == 'Password_court'){
            alert('password qssir')
          }
          else {
            Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'Something went wrong!',
            footer: '<a href="">Why do I have this issue?</a>'
          })
          }
        })
    }
  })
</script>
<?php require APPROOT . '/views/inc/footer.php'; ?>