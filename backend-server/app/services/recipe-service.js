import {connectPool} from "../factories/db-connection-factory.js";


export async function findRecipe (id) {
    const dbPool = await connectPool();
    const results = await dbPool.query( `SELECT *  FROM recipes WHERE recipe_id = ${id}`);
    console.log('ROWS:', results.rows);
    return results.rows[0];
}


/*
export async function findRecipePic (id) {
    const dbPool = await connectPool();
    const results = await dbPool.query( `SELECT *  FROM media WHERE recipe_id = ${id}`);
    console.log('ROWS:', results.rows)
    return results.rows[0];
}
*/
