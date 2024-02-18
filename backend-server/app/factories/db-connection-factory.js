import pg from 'pg';

const {Client, Pool} = pg;


let singletonClient = null,
    singletonPool = null;
/**
 * When using pooled connections
 *
 * Returns a singleton instance of the pg.Pool.
 *
 * You can safely call this function anywhere in your code
 * without being worried of multiple instances of the
 * db client hanging around! This function makes
 * sure that only one connected instance is
 * used all the time!
 *
 * @param {number} size - the pool size defaults to 20
 * @param {boolean} renew - ignore any available singleton instance
 * and create a fresh instance
 * @returns {Promise<Pool>}
 */
export async function connectPool(size = 20, renew= false) {
    if (singletonPool && !renew) {
        return singletonPool;
    }
    /*
    * If for some reason want a fresh instance,
    * when renew is true we are forced
    * to kill the current instance even if it's still connected
    * */
    if (renew && singletonPool) {
        await singletonPool.end();
    }
    const {
        PGUSER,
        PGPASSWORD,
        PGHOST,
        PGPORT,
        PGDATABASE
    } = process.env;

    const pool = new Pool({
        max:size,
        idleTimeoutMillis: 30000,
        connectionTimeoutMillis: 2000,
        user: PGUSER,
        password: PGPASSWORD,
        host: PGHOST,
        port: PGPORT,
        database: PGDATABASE,
    });

    await pool.connect();

    pool.on('end', () => {
        /*
        * The pool got disconnected for whatever reason,
        * we need set the singletonPool = null so
        * we can create a new instance again when next
        * time connect() is called!
        * */
        singletonPool = null;
    });

    return singletonPool = pool;
}

/**
 * Using direct client instance is preferred over pool when we want to use
 * transactions, otherwise almost always pool should be preferred.
 *
 * Returns a singleton instance of the pg.Client.
 *
 * You can safely call this function anywhere in your code
 * without being worried of multiple instances of the
 * db client hanging around! This function makes
 * sure that only one connected instance is
 * used all the time!
 *
 * @param {boolean} renew - ignore any available singleton instance and create a fresh instance
 * @returns {Promise<Client>}
 */
export async function connect(renew= false) {
    if (singletonClient && !renew) {
        return singletonClient;
    }
    /*
    * If for some reason want a fresh instance,
    * when renew is true we are forced
    * to kill the current instance even if it's still connected
    * */
    if(renew && singletonClient){
        await singletonClient.end();
    }
    const {
        PGUSER,
        PGPASSWORD,
        PGHOST,
        PGPORT,
        PGDATABASE
    } = process.env;

    const client = new Client({
        user: PGUSER,
        password: PGPASSWORD,
        host: PGHOST,
        port: PGPORT,
        database: PGDATABASE,
    });

    await client.connect();

    client.on('end', () => {
        /*
        * The client got disconnected for whatever reason,
        * we need set the singletonClient = null so
        * we can create a new instance again when next
        * time connect() is called!
        * */
        singletonClient = null;
    });

    return singletonClient = client;
}