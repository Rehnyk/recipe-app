import {connectPool} from "../factories/db-connection-factory.js";


export async function findRecipeRatings(recipeId) {
    const dbPool = await connectPool();
    const results = await dbPool.query(`SELECT *
                                        FROM ratings
                                        WHERE recipe_id = ${recipeId}`);
    return results.rows;
}

export async function findUserRecipeRating(userId, recipeId) {
    const dbPool = await connectPool();
    const results = await dbPool.query(`SELECT *
                                        FROM ratings
                                        WHERE user_id = ${userId}
                                          AND recipe_id = ${recipeId}`);
    return results.rows[0];
}

export async function addRating(userId, recipeId, stars) {
    const dbPool = await connectPool();
    await dbPool.query(
        `INSERT INTO ratings (user_id, recipe_id, stars, created_at, updated_at)
         VALUES (${userId}, ${recipeId}, ${stars}, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)`);
}

export async function changeRating(userId, recipeId, stars) {
    const dbPool = await connectPool();
    await dbPool.query(
        `UPDATE ratings
         SET stars = ${stars},
             updated_at = CURRENT_TIMESTAMP
         WHERE user_id = ${userId}
           AND recipe_id = ${recipeId}`);
}

export async function removeRating(userId, recipeId) {
    const dbPool = await connectPool();
   await dbPool.query(`DELETE
                       FROM ratings
                       WHERE user_id = ${userId}
                         AND recipe_id = ${recipeId}`);
}

