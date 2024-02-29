<script>
    import {onMount} from 'svelte';
    import * as ratingService from "../services/rating-service.js";
    import {initRating, useRatingStore} from "../stores/ratings.svelte.js";


    onMount(async () => {
        await initRating();
    });

    const store = useRatingStore();

    console.log('STORE:', store)

    let recipeRating = {
        recipeId: 2,
        userId: 1,
        stars: 3
    }


    const handleAddRating = async () => {
        const result = await ratingService.addRating(recipeRating);
        store.add(result.avgStars, result.newRating.stars);
    };

    const handleChangeRating = async () => {
        const result = await ratingService.changeRating(recipeRating);
        store.change(result.avgStars, result.updatedRating.stars);

    };

    const handleRemoveRating = async () => {
        const result = await ratingService.removeRating(recipeRating);
        store.remove(result.avgStars);
    };

    /*
        const generateStars2 = (rating) => {
            let starClass = "";

            if (rating >= 0.5) {
                starClass = "fa-solid fa-star"; // Full star
            } else if (rating > 0) {
                starClass = "fa-regular fa-star-half-stroke"; // Half star
            } else {
                starClass = "fa-regular fa-star"; // Empty star
            }
            return starClass;
        };


        let stars = [];

        const generateStars = (rating) => {
            stars = [];
            const fullStars = Math.floor(rating);
            const halfStarExists = rating % 1 !== 0;
            const emptyStars = 5 - fullStars - (halfStarExists ? 1 : 0);

            for (let i = 0; i < fullStars; i++) {
                stars.push("fa-solid fa-star");
            }

            if (halfStarExists) {
                stars.push("fa-regular fa-star-half-stroke");
            }

            for (let i = 0; i < emptyStars; i++) {
                stars.push("fa-regular fa-star");
            }

            console.log('STARS:', stars)
        };

        const handleStarClick = (index) => {
            // Calculate the new rating based on the index of the clicked star
            const newRating = index + 1;
            // Update the store with the new rating
            store.add(newRating, store.userRating);
            // Regenerate the star icons based on the new rating
            generateStars(newRating);
        };
    */


</script>

<div class="rating-box">

    <i class="fa-solid fa-star"></i>
    <i class="fa-solid fa-star"></i>
    <i class="fa-solid fa-star"></i>
    <i class="fa-regular fa-star-half-stroke"></i>
    <i class="fa-regular fa-star"></i>

    <h1>RATING: {store.recipeRating}</h1>

    <h2>Your rating: {store.userRating}</h2>


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
            color: #FFD700; !* Change color as needed *!
            margin-right: 5px;
        }*/

</style>

