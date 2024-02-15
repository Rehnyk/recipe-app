CREATE TABLE comments (
                          comment_id SERIAL PRIMARY KEY,
                          user_id INT NOT NULL,
                          recipe_id INT NOT NULL,
                          content TEXT NOT NULL,
                          created_at TIMESTAMP NOT NULL,
                          updated_at TIMESTAMP NOT NULL,
                          FOREIGN KEY (user_id) REFERENCES users(user_id),
                          FOREIGN KEY (recipe_id) REFERENCES recipes(recipe_id)
);