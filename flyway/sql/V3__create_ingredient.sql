CREATE TABLE Ingredient (
  ingredientId INT AUTO_INCREMENT PRIMARY KEY,
  recipeId INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  amount DECIMAL(10,2) NOT NULL,
  unit VARCHAR(50) NOT NULL,
  createdAt DATETIME NOT NULL,
  updatedAt DATETIME NOT NULL,
  orderIndex INT NOT NULL,
  FOREIGN KEY (recipeId) REFERENCES Recipe(recipeId)
);
