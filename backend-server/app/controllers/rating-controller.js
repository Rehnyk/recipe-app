import * as ratingService from "../services/rating-service.js";
import {app} from "../factories/app-factory.js";

app.get('/api/recipe/rating/:recipeId', async (request, response) => {
    try {
        const {recipeId} = request.params;
        const avgRating = await ratingService.averageRecipeRating(recipeId);
        response.status(200).send({'avgStars': Math.round(avgRating.stars * 2) / 2});
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
        response.status(200).send(ratingObj);
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
        const avgR = await ratingService.averageRecipeRating(recipeId);
        console.log('New RATING: ', {newRating, 'avgStars': Math.round(avgR.stars * 2) / 2});
        response.status(201).send({
                newRating,
                avgStars: Math.round(avgR.stars * 2) / 2
            }
        );
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
        const updatedRating = await ratingService.findUserRecipeRating(userId, recipeId)
        const avgR = await ratingService.averageRecipeRating(recipeId);
        console.log('Updated RATING: ', {updatedRating, 'avgStars': Math.round(avgR.stars * 2) / 2});
        response.status(201).send({
            updatedRating,
            avgStars: Math.round(avgR.stars * 2) / 2
        });
    } catch (e) {
        console.error(e);
        response.status(400).send({'message': 'Unable to update rating.'});
    }
});

app.delete('/api/recipe/rating/:recipeId/:userId', async (request, response) => {
    try {
        const {userId, recipeId} = request.params;
        await ratingService.removeRating(userId, recipeId);
        const avgR = await ratingService.averageRecipeRating(recipeId);
        console.log({'avgStars': Math.round(avgR.stars * 2) / 2});
        response.status(200).send({
            'avgStars': Math.round(avgR.stars * 2) / 2
        });
    } catch (e) {
        console.error(e);
        response.status(400).send({'message': 'Unable to remove rating.'});
    }
});


