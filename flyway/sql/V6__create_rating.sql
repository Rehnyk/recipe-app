CREATE TABLE Rating (
  ratingId INT AUTO_INCREMENT PRIMARY KEY,
  userId INT NOT NULL,
  recipeId INT NOT NULL,
  stars INT NOT NULL,
  createdAt DATETIME NOT NULL,
  updatedAt DATETIME NOT NULL,
  UNIQUE(userId, recipeId),
  FOREIGN KEY (userId) REFERENCES User(userId),
  FOREIGN KEY (recipeId) REFERENCES Recipe(recipeId)
);
