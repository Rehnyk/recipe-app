CREATE TABLE recipes_dietary_restrictions (
                                              recipe_id INT NOT NULL,
                                              restriction_id INT NOT NULL,
                                              created_at TIMESTAMP NOT NULL,
                                              updated_at TIMESTAMP NOT NULL,
                                              PRIMARY KEY(recipe_id, restriction_id),
                                              FOREIGN KEY (recipe_id) REFERENCES recipes(recipe_id),
                                              FOREIGN KEY (restriction_id) REFERENCES dietary_restrictions(restriction_id)
);