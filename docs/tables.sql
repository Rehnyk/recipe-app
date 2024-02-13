CREATE TABLE User (
  userId INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  createdAt DATETIME NOT NULL,
  updatedAt DATETIME NOT NULL,
  isAdmin BOOLEAN NOT NULL
);

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

CREATE TABLE Media (
  mediaId INT AUTO_INCREMENT PRIMARY KEY,
  recipeId INT NOT NULL,
  type VARCHAR(50) NOT NULL,
  createdAt DATETIME NOT NULL,
  updatedAt DATETIME NOT NULL,
  isCover BOOLEAN NOT NULL,
  content LONGBLOB NOT NULL,
  FOREIGN KEY (recipeId) REFERENCES Recipe(recipeId)
);

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

CREATE TABLE Category (
  categoryId INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  createdAt DATETIME NOT NULL,
  updatedAt DATETIME NOT NULL
);

CREATE TABLE RecipeCategory (
  recipeId INT NOT NULL,
  categoryId INT NOT NULL,
  createdAt DATETIME NOT NULL,
  updatedAt DATETIME NOT NULL,
  PRIMARY KEY(recipeId, categoryId),
  FOREIGN KEY (recipeId) REFERENCES Recipe(recipeId),
  FOREIGN KEY (categoryId) REFERENCES Category(categoryId)
);

CREATE TABLE DietaryRestriction (
  restrictionId INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  createdAt DATETIME NOT NULL,
  updatedAt DATETIME NOT NULL
);

CREATE TABLE RecipeDietaryRestriction (
  recipeId INT NOT NULL,
  restrictionId INT NOT NULL,
  createdAt DATETIME NOT NULL,
  updatedAt DATETIME NOT NULL,
  PRIMARY KEY(recipeId, restrictionId),
  FOREIGN KEY (recipeId) REFERENCES Recipe(recipeId),
  FOREIGN KEY (restrictionId) REFERENCES DietaryRestriction(restrictionId)
);
