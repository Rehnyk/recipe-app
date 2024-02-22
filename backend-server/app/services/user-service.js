import {connectPool} from "../factories/db-connection-factory.js";


export async function usersCount () {
    const dbPool = await connectPool();
    const results = await dbPool.query( `SELECT COUNT(*) AS count FROM users`);
    return results.rows[0].count;
}

