CREATE TABLE Recipe (
  recipeId INT AUTO_INCREMENT PRIMARY KEY,
  userId INT NOT NULL,
  title VARCHAR(255) NOT NULL,
  instructions TEXT NOT NULL,
  cookingTime INT NOT NULL,
  servingSize INT NOT NULL,
  createdAt DATETIME NOT NULL,
  updatedAt DATETIME NOT NULL,
  status ENUM('published', 'draft') NOT NULL,
  FOREIGN KEY (userId) REFERENCES User(userId)
);
