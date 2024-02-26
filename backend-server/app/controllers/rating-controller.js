import * as ratingService from "../services/rating-service.js";
import {app} from "../factories/app-factory.js";

app.get('/api/recipe/rating/:id', async (request, response) => {
    const { id } = request.params;
    const ratingObjs = await ratingService.findRecipeRatings(id);

    let result = 0;

    ratingObjs.forEach(r => {
        result += r.stars;
    });
    response.send(`${result/ratingObjs.length}`);
});

app.get('/api/recipe/rating/:recipeId/:userId', async (request, response) => {
    const { userId, recipeId } = request.params;
    const ratingObj = await ratingService.findUserRecipeRating(userId, recipeId);
    console.log('RATING: ', ratingObj)
    response.send(`${ratingObj.stars}`);
});

app.post('/api/recipe/rating', async (request, response) => {
    const { userId, recipeId, stars } = request.body;
    await ratingService.addRating(userId, recipeId, stars);
    console.log('New RATING: ', await ratingService.findUserRecipeRating(userId, recipeId))
    response.send('Rating added successfully');
});

app.put('/api/recipe/rating', async (request, response) => {
    const { userId, recipeId, stars } = request.body;
    console.log('Original RATING: ', await ratingService.findUserRecipeRating(userId, recipeId))

    await ratingService.changeRating(userId, recipeId, stars);
    console.log('Updated RATING: ', await ratingService.findUserRecipeRating(userId, recipeId))
    response.send('Rating updated successfully');
});

app.delete('/api/recipe/rating', async (request, response) => {
    const { userId, recipeId } = request.body;
    await ratingService.removeRating(userId, recipeId);
    response.send('Rating removed successfully');
});


