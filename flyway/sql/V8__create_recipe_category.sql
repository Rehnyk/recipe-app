CREATE TABLE RecipeCategory (
  recipeId INT NOT NULL,
  categoryId INT NOT NULL,
  createdAt DATETIME NOT NULL,
  updatedAt DATETIME NOT NULL,
  PRIMARY KEY(recipeId, categoryId),
  FOREIGN KEY (recipeId) REFERENCES Recipe(recipeId),
  FOREIGN KEY (categoryId) REFERENCES Category(categoryId)
);
