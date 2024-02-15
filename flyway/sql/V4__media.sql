CREATE TABLE media (
                       media_id SERIAL PRIMARY KEY,
                       recipe_id INT NOT NULL,
                       type VARCHAR(50) NOT NULL,
                       is_cover BOOLEAN NOT NULL,
                       content BYTEA NOT NULL,
                       created_at TIMESTAMP NOT NULL,
                       updated_at TIMESTAMP NOT NULL,
                       FOREIGN KEY (recipe_id) REFERENCES recipes(recipe_id)
);