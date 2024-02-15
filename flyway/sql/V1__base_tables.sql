CREATE TABLE users (
                       user_id SERIAL PRIMARY KEY,
                       name VARCHAR(255) NOT NULL,
                       email VARCHAR(255) NOT NULL UNIQUE,
                       password VARCHAR(255) NOT NULL,
                       is_admin BOOLEAN NOT NULL,
                       created_at TIMESTAMP NOT NULL,
                       updated_at TIMESTAMP NOT NULL
);

INSERT INTO users (name, email, password, is_admin, created_at, updated_at)
VALUES
    ('Admin', 'admin@admin.com', '$2a$10$IML8QCf6xA.alRbW.CG5PuvYc3Qs94vJvoTwbsSehs8s515cUMuZa', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('Alice123', 'alice123@fakeuser.com', '$2a$10$IML8QCf6xA.alRbW.CG5PuvYc3Qs94vJvoTwbsSehs8s515cUMuZa', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('Jack Smith', 'jack.smith@fakeuser.com', '$2a$10$IML8QCf6xA.alRbW.CG5PuvYc3Qs94vJvoTwbsSehs8s515cUMuZa', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)
;

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

CREATE TABLE categories (
                            category_id SERIAL PRIMARY KEY,
                            name VARCHAR(255) NOT NULL,
                            created_at TIMESTAMP NOT NULL,
                            updated_at TIMESTAMP NOT NULL
);

INSERT INTO categories (name, created_at, updated_at)
VALUES
    ('Breakfast', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('Dinner', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('Dessert', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('Salad', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('Soup', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)
;

CREATE TABLE recipes_categories (
                                    recipe_id INT NOT NULL,
                                    category_id INT NOT NULL,
                                    created_at TIMESTAMP NOT NULL,
                                    updated_at TIMESTAMP NOT NULL,
                                    PRIMARY KEY(recipe_id, category_id),
                                    FOREIGN KEY (recipe_id) REFERENCES recipes(recipe_id),
                                    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

CREATE TABLE dietary_restrictions (
    restriction_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);

INSERT INTO dietary_restrictions (name, created_at, updated_at)
VALUES
    ('vegetarian', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('vegan', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('gluten-free', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('lactose-free', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)
;

CREATE TABLE recipes_dietary_restrictions (
                                              recipe_id INT NOT NULL,
                                              restriction_id INT NOT NULL,
                                              created_at TIMESTAMP NOT NULL,
                                              updated_at TIMESTAMP NOT NULL,
                                              PRIMARY KEY(recipe_id, restriction_id),
                                              FOREIGN KEY (recipe_id) REFERENCES recipes(recipe_id),
                                              FOREIGN KEY (restriction_id) REFERENCES dietary_restrictions(restriction_id)
);
