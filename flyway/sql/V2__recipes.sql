CREATE TABLE recipes (
                         recipe_id SERIAL PRIMARY KEY,
                         user_id INT NOT NULL,
                         title VARCHAR(255) NOT NULL,
                         instructions TEXT NOT NULL,
                         cooking_time INT NOT NULL,
                         serving_size INT NOT NULL,
                         status VARCHAR(20) CHECK (status IN ('published', 'draft')),
                         created_at TIMESTAMP NOT NULL,
                         updated_at TIMESTAMP NOT NULL,
                         FOREIGN KEY (user_id) REFERENCES users(user_id)

);