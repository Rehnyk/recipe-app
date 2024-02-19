
<script>
    
    function goToSignup() {
        window.location.href = "/signup"; 
    }

</script>

<svelte:head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Sansita&display=swap" rel="stylesheet">
</svelte:head>

<style>
  
  .login-form {
    width: 340px;
    margin: 50px auto;
    position: relative;
    top: 120px;
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

  h1 {
    text-align: center;
  }
</style>

<h1>Welcome to Recipe App Login</h1>
<div class="login-form">
    <form action="/" method="POST">
       
        <h2 class="text-center">Login</h2>

        <div class="form-group">
            <label class="control-label" for="name"></label>
            <input type="text" class="form-control"  id="name" placeholder="Username" name="name" required="required">
        </div>

        <div class="form-group">
            <label class="control-label" for="password"></label>
            <input type="password" class="form-control" id="password" placeholder="Password" name="password" required="required">
        </div>

        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">Log in</button>
        </div>

        <div class="clearfix">
            <!-- You can include additional elements or logic here -->
            <!-- <label class="pull-left checkbox-inline"><input type="checkbox"></label> 
            <a href="#" class="pull-right"></a> -->
        </div>
    </form>

    <p class="text-center"><a href="/signup" on:click={goToSignup}>Signup</a></p>

</div>
