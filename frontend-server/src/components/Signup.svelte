<script>
  import { registerUser } from '../Api/userApi';

  let formData = {
      name: '',
      email: '',
      password: ''
  };

  async function handleSubmit() {
      try {
          const response = await registerUser(formData);
          console.log('Signup successful', response);
          // Redirect or handle the signup success
      } catch (error) {
          console.error('Signup failed:', error);
          // Handle signup errors here
      }
  }

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
  
  <div class="signup-form">
    <form on:submit|preventDefault={handleSubmit}>
        <h2 class="text-center">Signup</h2>

        <div class="form-group">
            <input type="text" class="form-control" bind:value={formData.name} placeholder="Username" required>
        </div>

        <div class="form-group">
            <input type="email" class="form-control" bind:value={formData.email} placeholder="Email" required>
        </div>

        <div class="form-group">
            <input type="password" class="form-control" bind:value={formData.password} placeholder="Password" required>
        </div>

        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">Signup</button>
        </div>

        <p class="text-center">Already have an account? <a href="/login" on:click={goToLogin}>Login</a></p>
    </form>
</div>