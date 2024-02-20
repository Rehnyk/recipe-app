<script>

</script>

<div id="recipes-list">

  <div class="recipe-container">
    <div class="image-holder">
      <img src="/eggs.webp" alt="egg" />
    </div>
    <div class="recipe-title">Egg omelets </div>
    <div class="recipe-description"> Egg omelets are very delicious. You can make them with almost anything.</div>
    <div class="recipe-author">Author: Reneta</div>
    <div class="recipe-date">01/01/24</div>
  </div>

  <div class="recipe-container">
    <div class="image-holder">
      <img src="/fish.webp" alt="fish" />
    </div>
    <div class="recipe-title">Fish Fillet </div>
    <div class="recipe-description"> Featuring a beautifully plated grilled salmon fillet over a bed of quinoa and vegetables, </div>
    <div class="recipe-author">Author: Sonya</div>
    <div class="recipe-date">01/01/24</div>
  </div>

</div>

<style>

  #recipes-list {
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
    flex-wrap: wrap;
  }

  .recipe-container {
    position: relative;
    background-color: #f5f5f5;
    margin: 20px;
    border-radius: 10px;
    width: 400px;
    height: 200px;
  }

  .recipe-title {
    color: black;
    position: absolute;
    top: 15px;
    left: 36%;
    font-size: 20px;
  }

  .recipe-description {
    color: black;
    position: absolute;
    top: 50px;
    left: 36%;
    padding-right: 10px;
  }

  .recipe-author {
    color: black;
    position: absolute;
    bottom: 15px;
    left: 36%;
  }

  .recipe-date {
    color: black;
    position: absolute;
    bottom: 15px;
    right: 15px;
  }

  .image-holder {
    position: absolute;
    top: 0;
    left: 0;
    width: 33%;
    height: 100%;
    border-right: 1px solid black;
  }

  img {
    border-radius: 10px 0 0 10px;
    width: 100%;
    height: 100%;
    object-fit: cover;
  }

</style>