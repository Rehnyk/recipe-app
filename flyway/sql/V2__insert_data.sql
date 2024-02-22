INSERT INTO recipes (user_id, title, instructions, cooking_time, serving_size, status, created_at, updated_at)
VALUES (2, 'Spaghetti Carbonara', '1. Cook spaghetti according to package instructions. 2. In a large skillet, cook the pancetta until crispy. 3. In a bowl, whisk together eggs, Parmesan cheese, and black pepper. 4. Drain cooked spaghetti and add it to the skillet with pancetta. 5. Pour the egg mixture over spaghetti and toss until coated. Serve immediately.', 20, 4, 'published', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_index, created_at, updated_at)
VALUES
    (1, 'Spaghetti', 225, 'g', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (1, 'Pancetta', 115, 'g', 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (1, 'Eggs', 2, 'unit', 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (1, 'Parmesan Cheese', 60, 'g', 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (1, 'Black Pepper', 1, 'tsp', 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


INSERT INTO recipes (user_id, title, instructions, cooking_time, serving_size, status, created_at, updated_at)
VALUES (2, 'Chicken Alfredo Pasta', '1. Cook fettuccine according to package instructions. 2. In a skillet, cook chicken until no longer pink. 3. Add garlic and cook until fragrant. 4. Stir in heavy cream and Parmesan cheese until sauce thickens. 5. Toss cooked pasta with sauce. Serve hot.', 25, 4, 'published', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_index, created_at, updated_at)
VALUES
    (2, 'Fettuccine', 225, 'g', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (2, 'Chicken Breast', 340, 'g', 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (2, 'Garlic', 2, 'cloves', 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (2, 'Heavy Cream', 240, 'ml', 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (2, 'Parmesan Cheese', 175, 'g', 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO recipes (user_id, title, instructions, cooking_time, serving_size, status, created_at, updated_at)
VALUES (2, 'Vegetable Stir-Fry', '1. Heat oil in a wok. 2. Add mixed vegetables and stir-fry until tender. 3. Add soy sauce and sesame oil. 4. Serve hot over rice or noodles.', 15, 4, 'published', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_index, created_at, updated_at)
VALUES
    (3, 'Mixed Vegetables', 450, 'g', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, 'Oil', 30, 'ml', 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, 'Soy Sauce', 30, 'ml', 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, 'Sesame Oil', 5, 'ml', 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, 'Rice or Noodles', 225, 'g', 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO recipes (user_id, title, instructions, cooking_time, serving_size, status, created_at, updated_at)
VALUES (2, 'Classic Caesar Salad', '1. In a large bowl, combine chopped romaine lettuce and croutons. 2. Toss with Caesar dressing until evenly coated. 3. Sprinkle with Parmesan cheese and black pepper. Serve immediately.', 10, 4, 'published', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_index, created_at, updated_at)
VALUES
    (4, 'Romaine Lettuce', 1, 'head', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (4, 'Croutons', 240, 'ml', 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (4, 'Caesar Dressing', 120, 'ml', 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (4, 'Parmesan Cheese', 60, 'g', 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (4, 'Black Pepper', 1, 'tsp', 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO recipes (user_id, title, instructions, cooking_time, serving_size, status, created_at, updated_at)
VALUES (2, 'Homemade Pizza', '1. Preheat oven to 230°C. 2. Roll out pizza dough and place on a baking sheet. 3. Spread tomato sauce over the dough. 4. Add desired toppings and sprinkle with cheese. 5. Bake for 12-15 minutes or until crust is golden and cheese is melted.', 25, 4, 'published', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_index, created_at, updated_at)
VALUES
    (5, 'Pizza Dough', 450, 'g', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (5, 'Tomato Sauce', 120, 'ml', 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (5, 'Pizza Toppings (e.g., pepperoni, mushrooms, bell peppers)', NULL, NULL, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (5, 'Cheese', 240, 'ml', 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (5, 'Oregano', 5, 'ml', 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO recipes (user_id, title, instructions, cooking_time, serving_size, status, created_at, updated_at)
VALUES (2, 'Chocolate Chip Cookies', '1. Preheat oven to 180°C. 2. In a bowl, cream together butter and sugars. 3. Beat in eggs and vanilla extract. 4. Gradually add flour mixture to the wet ingredients. 5. Stir in chocolate chips. 6. Drop dough by rounded spoonfuls onto ungreased baking sheets. 7. Bake for 10-12 minutes or until edges are golden brown. Let cool on baking sheets for 5 minutes before transferring to wire racks to cool completely.', 20, 24, 'published', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_index, created_at, updated_at)
VALUES
    (6, 'Butter', 225, 'g', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (6, 'Granulated Sugar', 120, 'g', 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (6, 'Brown Sugar', 120, 'g', 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (6, 'Eggs', 2, 'unit', 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (6, 'Vanilla Extract', 5, 'ml', 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (6, 'All-Purpose Flour', 280, 'g', 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (6, 'Baking Soda', 5, 'ml', 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (6, 'Salt', 2.5, 'ml', 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO recipes (user_id, title, instructions, cooking_time, serving_size, status, created_at, updated_at)
VALUES (2, 'Chicken Curry', '1. Heat oil in a pan and add chopped onions, ginger, and garlic. 2. Add chicken pieces and cook until browned. 3. Stir in curry powder, turmeric, and chili powder. 4. Pour in coconut milk and simmer until chicken is cooked through. 5. Garnish with chopped cilantro and serve with rice.', 30, 4, 'published', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_index, created_at, updated_at)
VALUES
    (7, 'Chicken Breast', 400, 'g', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (7, 'Onion', 1, 'unit', 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (7, 'Ginger', 15, 'g', 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (7, 'Garlic', 3, 'cloves', 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (7, 'Curry Powder', 15, 'g', 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (7, 'Turmeric', 5, 'g', 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (7, 'Chili Powder', 5, 'g', 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (7, 'Coconut Milk', 400, 'ml', 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (7, 'Cilantro', NULL, NULL, 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (7, 'Rice', NULL, NULL, 10, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO recipes (user_id, title, instructions, cooking_time, serving_size, status, created_at, updated_at)
VALUES (2, 'Vegetable Lasagna', '1. Cook lasagna noodles according to package instructions. 2. In a pan, sauté chopped vegetables until tender. 3. In a separate bowl, mix ricotta cheese, spinach, and herbs. 4. Layer lasagna noodles, vegetables, and cheese mixture in a baking dish. 5. Top with marinara sauce and mozzarella cheese. 6. Bake at 350°F for 30 minutes or until bubbly.', 45, 6, 'published', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_index, created_at, updated_at)
VALUES
    (8, 'Lasagna Noodles', 250, 'g', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (8, 'Assorted Vegetables (e.g., bell peppers, zucchini, mushrooms)', NULL, NULL, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (8, 'Ricotta Cheese', 500, 'g', 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (8, 'Spinach', 200, 'g', 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (8, 'Herbs (e.g., basil, oregano)', NULL, NULL, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (8, 'Marinara Sauce', 500, 'ml', 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (8, 'Mozzarella Cheese', 200, 'g', 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO recipes (user_id, title, instructions, cooking_time, serving_size, status, created_at, updated_at)
VALUES (2, 'Beef Stir-Fry', '1. Marinate beef strips in soy sauce, garlic, and ginger. 2. Heat oil in a wok and stir-fry marinated beef until browned. 3. Add sliced vegetables and cook until tender-crisp. 4. Stir in a mixture of soy sauce, oyster sauce, and sugar. 5. Serve hot over rice or noodles.', 25, 4, 'published', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_index, created_at, updated_at)
VALUES
    (9, 'Beef Strips', 400, 'g', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (9, 'Soy Sauce', 30, 'ml', 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (9, 'Garlic', 3, 'cloves', 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (9, 'Ginger', 15, 'g', 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (9, 'Assorted Vegetables (e.g., bell peppers, broccoli, carrots)', NULL, NULL, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (9, 'Oyster Sauce', 30, 'ml', 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (9, 'Sugar', 10, 'g', 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (9, 'Rice or Noodles', NULL, NULL, 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO recipes (user_id, title, instructions, cooking_time, serving_size, status, created_at, updated_at)
VALUES (2, 'Caprese Salad', '1. Slice tomatoes and fresh mozzarella cheese. 2. Arrange tomato and mozzarella slices on a plate, alternating. 3. Drizzle with balsamic glaze and olive oil. 4. Sprinkle with chopped fresh basil, salt, and pepper. 5. Serve immediately.', 10, 2, 'published', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_index, created_at, updated_at)
VALUES
    (10, 'Tomatoes', 2, 'unit', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (10, 'Fresh Mozzarella Cheese', 200, 'g', 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (10, 'Balsamic Glaze', NULL, NULL, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (10, 'Olive Oil', NULL, NULL, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (10, 'Fresh Basil', NULL, NULL, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (10, 'Salt', NULL, NULL, 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (10, 'Pepper', NULL, NULL, 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO recipes (user_id, title, instructions, cooking_time, serving_size, status, created_at, updated_at)
VALUES (1, 'Beef Tacos', '1. Cook ground beef with taco seasoning until browned. 2. Warm taco shells in the oven. 3. Fill taco shells with cooked beef, shredded lettuce, diced tomatoes, shredded cheese, and sour cream. 4. Serve immediately with salsa.', 20, 4, 'published', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_index, created_at, updated_at)
VALUES
    (11, 'Ground Beef', 400, 'g', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (11, 'Taco Seasoning', NULL, NULL, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (11, 'Taco Shells', 8, 'unit', 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (11, 'Shredded Lettuce', 100, 'g', 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (11, 'Tomatoes', 2, 'unit', 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (11, 'Shredded Cheese', 100, 'g', 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (11, 'Sour Cream', 50, 'g', 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (11, 'Salsa', NULL, NULL, 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


INSERT INTO recipes_dietary_restrictions (recipe_id, restriction_id, created_at, updated_at)
VALUES
    (3, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (4, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (5, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (6, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (7, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (7, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (8, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (9, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (9, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (10, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (10, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


INSERT INTO comments (user_id, recipe_id, content, created_at, updated_at)
VALUES
    (2, 1, 'Delicious! Made it for dinner last night and everyone loved it.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, 1, 'This recipe is a staple in our house. So easy and tasty!', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (1, 5, 'The crust was perfectly crispy and the toppings were so flavorful.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (2, 7, 'I made this with tofu instead of chicken, and it was fantastic!', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, 9, 'Great recipe! Quick and easy to make on busy weeknights.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (1, 10, 'Simple and refreshing. Perfect for a summer lunch!', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (2, 11, 'My family requests this every Taco Tuesday! So tasty.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, 2, 'Creamy and delicious. Will definitely make again.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (1, 3, 'Love how versatile this stir-fry is. I add different veggies each time!', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (2, 6, 'These cookies disappeared within minutes of coming out of the oven. So good!', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, 8, 'The lasagna was a hit with my family. Even the picky eaters went back for seconds!', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (1, 9, 'The beef was tender and flavorful. Definitely adding this to my regular rotation.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (2, 4, 'Classic Caesar Salad never disappoints. Always a crowd pleaser!', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, 1, 'Simple yet delicious. A perfect weeknight dinner.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (1, 7, 'The chicken curry was so aromatic and flavorful. Will make again!', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (2, 2, 'Rich and creamy. A comforting dish for a cozy night in.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, 5, 'Pizza night is a hit in our house, thanks to this recipe!', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (1, 11, 'These tacos are a favorite for family gatherings. Always a hit!', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (2, 8, 'The veggie lasagna was packed with flavor. Even the meat eaters enjoyed it!', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, 10, 'Caprese salad is a summer favorite. So simple yet so delicious!', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO ratings (user_id, recipe_id, stars, created_at, updated_at)
VALUES
    (2, 1, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, 1, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (1, 5, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (2, 7, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, 9, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (1, 10, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (2, 11, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (1, 3, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (2, 6, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, 8, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (1, 9, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (2, 4, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, 1, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (1, 7, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (2, 2, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, 5, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (1, 11, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (2, 8, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, 10, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO media (recipe_id, type, is_cover, content, created_at, updated_at)
VALUES
    (1, 'image/jpeg', true, (SELECT lo_import('/app/static/recipe-pics/recipe1.jpg')), CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (2, 'image/jpeg', true, (SELECT lo_import('/app/static/recipe-pics/recipe2.jpg')), CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, 'image/jpeg', true, (SELECT lo_import('/app/static/recipe-pics/recipe3.jpg')), CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (4, 'image/jpeg', true, (SELECT lo_import('/app/static/recipe-pics/recipe4.jpg')), CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (5, 'image/jpeg', true, (SELECT lo_import('/app/static/recipe-pics/recipe5.jpg')), CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (6, 'image/jpeg', true, (SELECT lo_import('/app/static/recipe-pics/recipe6.jpg')), CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


