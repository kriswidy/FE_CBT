<?php $this->load->view('_partials/head'); ?>

<?php $this->load->view('_partials/nav_awal'); ?>

<br>

<div class="container">
<div class="jumbotron">
<center>
  <h2>Login</h2>
  </center>
  <form action="/action_page.php">
    <div class="form-group">
      <label for="email">Username:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd">
    </div>
    <div class="form-group form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"> Remember me
      </label>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
  <br>
  <br>
  <p><i>*Untuk mengakses bagian-bagian dari Sistem Ujian Online, anda harus log in menggunakan username dan password yang diizinkan oleh sistem administrator.</i> </p>
  
</div>

</div>

<?php $this->load->view('_partials/footer_awal'); ?>
