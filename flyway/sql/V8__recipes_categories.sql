CREATE TABLE recipes_categories (
                                    recipe_id INT NOT NULL,
                                    category_id INT NOT NULL,
                                    created_at TIMESTAMP NOT NULL,
                                    updated_at TIMESTAMP NOT NULL,
                                    PRIMARY KEY(recipe_id, category_id),
                                    FOREIGN KEY (recipe_id) REFERENCES recipes(recipe_id),
                                    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);