<script>
  import { onMount } from 'svelte';
  import { user } from '../stores/store'

  let showSearch = false;
  let userName = '';

  onMount(() => {
    const isLoggedIn = localStorage.getItem('isLoggedIn') === 'true';
    const userName = localStorage.getItem('userName');

    console.log('Is logged in:', isLoggedIn);
    console.log('User name:', userName);

    if (isLoggedIn) {
        user.set({ isLoggedIn: true, details: { name: userName } });
    }
});


  function toggleSearch() {
    showSearch = !showSearch;
  }

  function logOut() {
    user.set({ isLoggedIn: false, details: null });
    localStorage.removeItem('isLoggedIn');
    localStorage.removeItem('userName');
    window.location.href = "/";
  }

</script>



<div id="navigation_container">
  <div>
    <img src="/logo.png" alt="logo"/>
  </div>

  <div>
    <button on:click={toggleSearch}>
      <i class="fas fa-search"></i>
    </button>

    {#if showSearch}
      <input type="text" class="search-input" placeholder="Search..." />
    {/if}
  </div>

  <ul>
    <li>Recipes</li>
    <li>About</li>
    {#if $user.isLoggedIn}
      <li>Welcome, {$user.details.name}</li>
      <li><button on:click={logOut} class="nav-link">Log Out</button></li>
    {:else}
  <li><a href="/login" class="nav-link">Sign In</a></li>
{/if}


  </ul>

</div>



<style>
  #navigation_container {
    display: flex;
    background-color: rgb(41, 41, 41);
    padding: 10px;
    justify-content: space-between;
    align-items: center;
    color: rgb(191, 191, 191);
    height: 50px;
  }

  ul {
    list-style-type: none;
    padding: 0;
  }

  ul li {
    display: inline;
    margin-right: 10px;
  }

  ul li a {
    text-decoration: none;
  }

  ul li a:hover {
    text-decoration: underline;
  }

  .search-input {
    width: 275px;
    height: 30px;
    padding: 0 10px;
    border: none;
    border-radius: 15px;
    outline: none;
    background-color: #f1f1f1;
    transition: width 0.5s ease-out;
    opacity: 0.8;
  }

  img {
    position: absolute;
    top: 100px;
    left: 20px;
    width: 200px;
    height: 200px;
    border-radius: 50%
  }

</style>