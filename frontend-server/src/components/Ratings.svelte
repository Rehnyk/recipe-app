<script>
    import * as ratingService from "../services/rating-service.js";
    import { useRatingStore }from "../stores/ratings.svelte.js";

    const store = useRatingStore();

    //    let { } = $props();


//         <button on:click={() => counter1.increment()}>Clicks: {counter1.count}</button>



let recipeRating = {
        recipeId: 2,
        userId: 1,
        stars: 4
    }

    let rating = 0;
    let uRating = 0;

    const fetchRecipeRating = async () => {
        rating = await ratingService.findRecipeRating(recipeRating);
    };

    const fetchUserRecipeRating = async () => {
        uRating = await ratingService.findUserRecipeRating(recipeRating);
    };

    const fetchAddRating = async () => {
        rating = await ratingService.addRating(recipeRating);
    };

    const fetchChangeRating = async () => {
        rating = await ratingService.changeRating(recipeRating);
    };

    const fetchRemoveRating = async () => {
        rating = await ratingService.removeRating(recipeRating);
    };

</script>

<div class="rating-box">

    <button on:click={fetchRecipeRating}>Show Rating</button>
    <h1>RATING: {rating.stars}</h1>
    <button on:click={fetchUserRecipeRating}>Show Your Rating</button>
    <h2>Your rating: {uRating.stars}</h2>

    <br>

    <p>Rate this recipe</p>
    <button on:click={fetchChangeRating}>Change</button>



</div>


<style>
    .rating-box {
        border: 1px solid #000;
        margin: 40px auto;
        padding: 30px;
    }

</style>