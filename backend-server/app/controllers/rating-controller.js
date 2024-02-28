import * as ratingService from "../services/rating-service.js";
import {app} from "../factories/app-factory.js";

app.get('/api/recipe/rating/:recipeId', async (request, response) => {
    try {
        const {recipeId} = request.params;
        const ratingObjs = await ratingService.findRecipeRatings(recipeId);

        let roundedRating;
        let sum = 0;
        ratingObjs.forEach(r => {
            sum += r.stars;
        });
        const avg = sum / ratingObjs.length;
        avg % 1 === 0
            ? roundedRating = avg
            : roundedRating = Math.round(avg * 2) / 2;

        response.status(200).send({'rating': roundedRating});
    } catch (e) {
        console.error(e);
        response.status(400).send({'message': 'Unable to retrieve rating for recipe.'});
    }

});

app.get('/api/recipe/rating/:recipeId/:userId', async (request, response) => {
    try {
        const {userId, recipeId} = request.params;
        const ratingObj = await ratingService.findUserRecipeRating(userId, recipeId);
        console.log('RATING: ', ratingObj)
        response.status(200).send({ratingObj});
    } catch (e) {
        console.error(e);
        response.status(400).send({'message': 'Unable to retrieve rating.'});
    }
});

app.post('/api/recipe/rating/:recipeId', async (request, response) => {
    try {
        const {recipeId} = request.params;
        const {userId, stars} = request.body;
        await ratingService.addRating(userId, recipeId, stars);

        const newRating = await ratingService.findUserRecipeRating(userId, recipeId);
        console.log('New RATING: ', newRating);
        response.status(201).send(newRating);
    } catch (e) {
        console.error(e);
        response.status(400).send({'message': 'Unable to add rating.'});
    }
});

app.put('/api/recipe/rating/:recipeId/:userId', async (request, response) => {
    try {
        const {userId, recipeId} = request.params;
        console.log('Original RATING: ', await ratingService.findUserRecipeRating(userId, recipeId))

        await ratingService.changeRating(userId, recipeId, request.body.stars);
        const updatedRating = await ratingService.findUserRecipeRating(userId, recipeId);
        console.log('Updated RATING: ', updatedRating);
        response.status(200).send(updatedRating);
    } catch (e) {
        console.error(e);
        response.status(400).send({'message': 'Unable to update rating.'});
    }
});

app.delete('/api/recipe/rating/:recipeId/:userId', async (request, response) => {
    try{
        const {userId, recipeId} = request.params;
        await ratingService.removeRating(userId, recipeId);
        response.status(204).send();
    } catch (e) {
        console.error(e);
        response.status(400).send({'message': 'Unable to remove rating.'});
    }
});


