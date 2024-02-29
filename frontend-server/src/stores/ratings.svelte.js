import * as ratingService from "../services/rating-service.js";

let recipeRating = $state(0);
let userRating = $state(0);

export const initRating = async () => {
    let rRating = await ratingService.findRecipeRating({recipeId: 2});
    let uRating = await ratingService.findUserRecipeRating({recipeId: 2, userId: 2});

    recipeRating = rRating.avgStars
    userRating = uRating.stars;
}
export const useRatingStore = () => {

    return {
        get recipeRating() {
            return recipeRating;
        },
        get userRating() {
            return userRating;
        },
        add: (recipeR, userR) => {
            recipeRating = recipeR;
            userRating = userR;
        },
        change: (recipeR, userR) => {
            recipeRating = recipeR;
            userRating = userR;
        },
        remove: (recipeR) => {
            recipeRating = recipeR;
            userRating = 0;
        },
    };

};

