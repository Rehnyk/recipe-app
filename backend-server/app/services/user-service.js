import { connectPool } from "../factories/db-connection-factory.js";

export async function usersCount() {
    const dbPool = await connectPool();
    const results = await dbPool.query(`SELECT COUNT(*) AS count FROM users`);
    return results.rows[0].count;
}

export async function findUser(id) {
    const dbPool = await connectPool();
    const results = await dbPool.query(`SELECT * FROM users WHERE user_id = $1`, [id]);
    return results.rows[0];
}

export async function addUser(user) {
    const dbPool = await connectPool();
    const { name, email, password } = user;
    const createdAt = new Date();
    const updatedAt = new Date();
    const query = `INSERT INTO users (name, email, password, created_at, updated_at)
                   VALUES ($1, $2, $3, $4, $5)`;
    await dbPool.query(query, [name, email, password, createdAt, updatedAt]);
}

export async function findUserByEmail(email) {
    const dbPool = await connectPool();
    const query = `SELECT * FROM users WHERE email = $1`;
    const result = await dbPool.query(query, [email]);
    if (result.rows.length > 0) {
        return result.rows[0];
    } else {
        return null;
    }
}

export async function updateUser(user) {
    const dbPool = await connectPool();
    const { user_id, name, email } = user;
    const updatedAt = new Date();
    const query = `UPDATE users SET name = $1, email = $2, updated_at = $3 WHERE user_id = $4`;
    await dbPool.query(query, [name, email, updatedAt, user_id]);
}
