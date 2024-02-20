<script>
    function goToLogin() {
        window.location.href = "/login"; 
    }
  </script>
  
  <svelte:head>
    <title>Signup</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Sansita&display=swap" rel="stylesheet">
  </svelte:head>
  
  <style>
    /* Your custom styles */
    body {
      background: url("https://res.cloudinary.com/finnhvman/image/upload/v1541930411/pattern.png");
    }
    .signup-form {
      width: 340px;
      margin: 50px auto;
      position: relative;
      top: 120px;
    }
    .signup-form form {
      margin-bottom: 15px;
      background: #f7f7f7;
      box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
      padding: 30px;
    }
    .signup-form h2 {
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
    h1 {
      text-align: center;
    }
  </style>
  
  <h1>Welcome to Recipe App Signup</h1>
  <div class="signup-form">
    <form action="/signup" method="POST">
      <h2 class="text-center">Signup</h2>
      <div class="form-group">
        <label class="control-label" for="name">Username</label>
        <input type="text" class="form-control" id="name" name="name" placeholder="Username" required="required">
      </div>
      <div class="form-group">
        <label class="control-label" for="email">Email</label>
        <input type="email" class="form-control" id="email" name="email" placeholder="Email" required="required">
      </div>
      <div class="form-group">
        <label class="control-label" for="password">Password</label>
        <input type="password" class="form-control" id="password" name="password" placeholder="Password" required="required">
      </div>
      <div class="form-group">
        <button type="submit" class="btn btn-primary btn-block">Signup</button>
      </div>
    </form>
    <p class="text-center">Already have an account? <a href="/login" on:click={goToLogin}>Login</a></p>
  </div>
