CREATE TABLE RecipeDietaryRestriction (
  recipeId INT NOT NULL,
  restrictionId INT NOT NULL,
  createdAt DATETIME NOT NULL,
  updatedAt DATETIME NOT NULL,
  PRIMARY KEY(recipeId, restrictionId),
  FOREIGN KEY (recipeId) REFERENCES Recipe(recipeId),
  FOREIGN KEY (restrictionId) REFERENCES DietaryRestriction(restrictionId)
);
