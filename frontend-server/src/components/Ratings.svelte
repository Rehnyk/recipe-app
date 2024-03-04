<script>
    import {onMount} from 'svelte';
    import * as ratingService from "../services/rating-service.js";
    import {initRating, useRatingStore} from "../stores/ratings.svelte.js";

    let recipeRating;
    let selectedRating = 3;

    onMount(async () => {
        recipeRating = await initRating();
        console.log('RECIPE RATING:', store.recipeRating)
    });

    const userId = 2;
    const recipeId = 1;

    const store = useRatingStore();


    const handleAddRating = async () => {
        const result = await ratingService.addRating({ recipeId, userId, stars: selectedRating });
        store.add(result.avgStars, result.newRating.stars);
    };

    const handleChangeRating = async () => {
        const result = await ratingService.changeRating({ recipeId, userId, stars: selectedRating });
        store.change(result.avgStars, result.updatedRating.stars);

    };

    const handleRemoveRating = async () => {
        console.log('REMOVE RATING:', store.recipeRating)
        const result = await ratingService.removeRating({ recipeId, userId });
        store.remove(result.avgStars);
    };



</script>

<div class="rating-box">

    <i class="fa-solid fa-star"></i>
    <i class="fa-solid fa-star"></i>
    <i class="fa-solid fa-star"></i>
    <i class="fa-regular fa-star-half-stroke"></i>
    <i class="fa-regular fa-star"></i>

    <h1>RATING: {store.recipeRating}</h1>

    <h2>Your rating: {store.userRating}</h2>

    <br>
    <br>

    <p>Rate this recipe</p>

    <button on:click={handleAddRating}>Add</button>
    <button on:click={handleChangeRating}>Change</button>
    <button on:click={handleRemoveRating}>Remove</button>
</div>


<style>
    .rating-box {
        border: 1px solid #000;
        margin: 40px auto;
        padding: 30px;
    }

    i {
        font-size: 25px;
    }

    /*
        .stars {
            display: flex;
        }

        .stars span {
            cursor: pointer;
            font-size: 24px;
            color: #FFD700;
        }*/

</style>

