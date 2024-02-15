CREATE TABLE ingredients (
                             ingredient_id SERIAL PRIMARY KEY,
                             recipe_id INT NOT NULL,
                             name VARCHAR(255) NOT NULL,
                             amount DECIMAL(10,2) NOT NULL,
                             unit VARCHAR(50) NOT NULL,
                             order_index INT NOT NULL,
                             created_at TIMESTAMP NOT NULL,
                             updated_at TIMESTAMP NOT NULL,
                             FOREIGN KEY (recipe_id) REFERENCES recipes(recipe_id)
);