CREATE TABLE ratings (
                         rating_id SERIAL PRIMARY KEY,
                         user_id INT NOT NULL,
                         recipe_id INT NOT NULL,
                         stars INT NOT NULL,
                         created_at TIMESTAMP NOT NULL,
                         updated_at TIMESTAMP NOT NULL,
                         UNIQUE(user_id, recipe_id),
                         FOREIGN KEY (user_id) REFERENCES users(user_id),
                         FOREIGN KEY (recipe_id) REFERENCES recipes(recipe_id)
);