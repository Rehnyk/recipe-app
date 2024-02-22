import {connectPool} from "../factories/db-connection-factory.js";


export async function fooFunc () {
    const dbPool = await connectPool();
    return  await dbPool.query( `SELECT *  FROM dietary_restrictions`);
}