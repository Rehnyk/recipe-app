CREATE TABLE Comment (
  commentId INT AUTO_INCREMENT PRIMARY KEY,
  userId INT NOT NULL,
  recipeId INT NOT NULL,
  content TEXT NOT NULL,
  createdAt DATETIME NOT NULL,
  updatedAt DATETIME NOT NULL,
  FOREIGN KEY (userId) REFERENCES User(userId),
  FOREIGN KEY (recipeId) REFERENCES Recipe(recipeId)
);
