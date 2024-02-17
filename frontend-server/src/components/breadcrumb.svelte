<script>
  let symbol = '>';
</script>

<nav class="breadcrumb">
  <ul>
    <li>Home</li>
    {@html symbol}
    <li>Something</li>
  </ul>
</nav>

<style>
  .breadcrumb {
    display: flex;
    justify-content: flex-start;
    background-color: rgb(28, 28, 33);
    padding: 10px;
    align-items: center;
    color: rgb(191, 191, 191);
    font-weight: 400;
    font-size: 0.875rem;
    font-family: corporate-s, "Helvetica Neue", Helvetica, Arial, sans-serif;
    padding-left: 50px;
    width: 100%;
  }

  .breadcrumb ul {
    list-style-type: none;
    padding: 0;
  }

  .breadcrumb ul li {
    display: inline;
    margin: 5px;
  }

  .breadcrumb ul li a {
    text-decoration: none;
  }

  .breadcrumb ul li a:hover {
    text-decoration: underline;
  }
</style>