<script>
    import * as ratingService from "../services/rating-service.js";
    //    let { } = $props();

    let rating = 0;

    const fetchRecipeRating = async () => {
        rating = await ratingService.findRecipeRating(2);
    };

</script>

<div class="rating-box">

    <h1>RATING: {rating.rating}</h1>
    <button on:click={fetchRecipeRating}>Show Rating</button>

</div>


<style>
    .rating-box {
        border: 1px solid #000;
        margin: 40px auto;
        padding: 30px;
    }

</style>