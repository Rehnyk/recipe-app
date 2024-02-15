INSERT INTO users (name, email, password, is_admin, created_at, updated_at)
VALUES
    ('Admin', 'admin@admin.com', '$2a$10$IML8QCf6xA.alRbW.CG5PuvYc3Qs94vJvoTwbsSehs8s515cUMuZa', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('Alice123', 'alice123@fakeuser.com', '$2a$10$IML8QCf6xA.alRbW.CG5PuvYc3Qs94vJvoTwbsSehs8s515cUMuZa', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('Jack Smith', 'jack.smith@fakeuser.com', '$2a$10$IML8QCf6xA.alRbW.CG5PuvYc3Qs94vJvoTwbsSehs8s515cUMuZa', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)
;
-- All passwords are 123456



INSERT INTO categories (name, created_at, updated_at)
VALUES
    ('Breakfast', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('Dinner', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('Dessert', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('Salad', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('Soup', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)
;


INSERT INTO dietary_restrictions (name, created_at, updated_at)
VALUES
    ('vegetarian', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('vegan', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('gluten-free', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('lactose-free', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)
;