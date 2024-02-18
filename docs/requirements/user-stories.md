# User stories for recipe index

This document is currently in its initial state. Please feel free to make improvements or 
discuss your opinions regarding each user story with other team members to finalize it. Your input 
and collaboration are highly valued in ensuring the accuracy and completeness of this document.

## User Roles

Here are outlined different user roles and their associated permissions within the recipe application.

### Guest/Visitor

A **guest** or **visitor** is an anonymous user of the site. They have limited access to the features and functionalities of the application. A guest can:

- View recipes
- View comments and ratings on recipes
- Search recipes by categories and tags

### Logged-In User

A **logged-in user** has created an account and is authenticated to access additional features of the application. Logged-in users can:

- Create new recipes
- Edit their own recipes
- Delete their own recipes
- Rate and comment on recipes

### Admin

An **admin** is a privileged user with additional administrative capabilities. Admins have all the permissions of a logged-in user, plus the ability to:

- Delete any recipe, regardless of ownership

Admins play a crucial role in maintaining the integrity and quality of the application by moderating and managing recipes as needed.

-----------------------------------------

In this document we use the following syntax for creating user stories:

```
As a [type of user], I want [an action] so that [a benefit/a value].
```

## User Management

- As a new visitor, I want to create an account so that I can save my favorite 
recipes.
- As a user, I want to login to my account so that I can access 
personalized features.
- As a user, I want to reset my password in case I forget it so that 
I can regain access to my account. [Nice to have]

## Recipe Browsing

- As a user or guest, I want to search for recipes by title so that I can quickly find specific recipes.
- As a user or guest, I want to filter recipes by category so that I can browse 
recipes in my area of interest.
- As a user or guest, with dietary restrictions, I want to filter recipes by 
dietary restrictions so that I can easily find recipes that are suitable for me.

## Recipe Details

- As a user or guest, I want to view a list of ingredients for a recipe so that I know what I need to make it.
- As a user or guest, I want to see cooking instructions for a recipe so that I can prepare the dish.
- As a user or guest, I want to see the cooking time and serving size so that I can manage my time and servings.

## Recipe Interaction

- As a logged-in user, I want to rate a recipe so that I can share feedback with others.
- As a logged-in user, I want to comment on a recipe so that I can ask questions or provide suggestions.

## Media Management

- As a user or guest, I want to view images of the recipes so that I can see what 
the final dish should look like.
- As a recipe creator [logged-in], I want to upload images for my recipe 
so that I can showcase my dish.

## Administration

- As an admin, I want to add or remove recipe categories so that the recipe categories 
stay relevant and organized.
- As an admin, I want to manage recipes, including editing or removing 
them so that the content quality remains high.
