
<script>
  import { loginUser } from '../Api/userApi';
  import { user } from '../stores/store';

  let formData = {
      email: '',
      password: ''
  };

  async function handleSubmit() {
    try {
        const response = await loginUser(formData);
        console.log('Login successful', response);

        // Update the user store
        user.set({ 
          isLoggedIn: true, 
          details: {
            userId: response.user_id,
            name: response.name,
            email: formData.email,
            isAdmin: response.is_admin
          }
        });

        // Store login state in localStorage
        localStorage.setItem('isLoggedIn', 'true');
        localStorage.setItem('userName', response.name);

        alert("Login successful. Redirecting to dashboard.");
        window.location.href = "/"; // Redirect to the dashboard or home page
    } catch (error) {
        console.error('Login failed:', error);
        alert("Login failed: " + error.message);
    }
  }


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

<div class="login-form">
  <form on:submit|preventDefault={handleSubmit}>
      <h2 class="text-center">Login</h2>

      <div class="form-group">
          <input type="email" class="form-control" bind:value={formData.email} placeholder="Email" required>
      </div>

      <div class="form-group">
          <input type="password" class="form-control" bind:value={formData.password} placeholder="Password" required>
      </div>

      <div class="form-group">
          <button type="submit" class="btn btn-primary btn-block">Log in</button>
      </div>

      <p class="text-center"><a href="/signup" on:click={goToSignup}>Signup</a></p>
  </form>
</div>
