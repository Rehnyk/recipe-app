Domain Model Description
------------------------------------------

## Overview
This document provides a detailed description of the domain model for our Recipe Web App, highlighting the design decisions made and their justifications to ensure clarity, efficiency, and scalability of the application's data structure.

## Entities

### User

- **Attributes**: Includes standard user information along with `isAdmin` to distinguish between regular users and administrators.
- **Justification**: An `isAdmin` flag is used for role-based access control within the app, which allows for differentiation of user privileges without needing a separate table.

### Recipe

- **Attributes**: Contains details necessary for describing a recipe, 
such as title, instructions, cooking time, serving size, and status.
- **Justification**: The status attribute is crucial 
for draft management and publication control.


#### Note on the `instructions` Field in the Recipe Table

The `Recipe` table contains a field named `instructions`, designed to store the cooking steps for a recipe. It is important to note the following design considerations for this field:

- **Simplicity**: In contrast to many mainstream recipe applications that offer multi-step instruction support, our initial version uses a single `instructions` text field. This design choice prioritizes simplicity in both the back-end domain model and the corresponding front-end implementation.

- **Usability**: While multi-step instructions can enhance user experience by providing more structured guidance, they also add complexity to the user interface and the underlying data model. By starting with a straightforward text field, we streamline the process of entering and displaying recipes for our users and developers alike.

- **Future Flexibility**: This approach does not preclude us from evolving the application in the future. Should there be a clear demand from our user base for multi-step instructions, we are prepared to iterate on the design. This may involve extending the domain model to accommodate more complex data structures and updating the front-end to support an enhanced step-by-step instructional interface.

- **Development Efficiency**: Launching with a simple `instructions` field allows us to bring our application to market more quickly. This efficiency means we can start gathering user feedback sooner, which will inform any potential enhancements in a way that is driven by actual user needs and preferences.

> In summary, the current design of the `instructions` field is a strategic decision to maintain a manageable 
> scope for our initial launch. It is a conscious trade-off that favors a faster development cycle and an uncomplicated 
> user experience, with the flexibility to adapt and expand the feature set in future versions based on user feedback 
> and business priorities.


### Ingredient

- **Attributes**: Describes ingredients with a name, amount, and unit.
- **Justification**: This entity is normalized to avoid repetition and to allow for reuse of ingredients across 
different recipes.

### RecipeCategory

- **Attributes**: A join table to implement the many-to-many relationship between Recipes and Categories.
- **Justification**: Many recipes can belong to multiple categories, and this table allows for that flexibility.

### Category

- **Attributes**: Name of the category only.
- **Justification**: Keeping this entity simple allows for easy expansion or modification of categories.

### DietaryRestriction

- **Attributes**: Name of the dietary restriction.
- **Justification**: This entity provides a way to tag recipes with specific dietary restrictions, an important feature 
for inclusivity.

### RecipeDietaryRestriction

- **Attributes**: A join table to implement the many-to-many relationship between Recipes and DietaryRestrictions.
- **Justification**: Recipes may comply with multiple dietary restrictions, necessitating a flexible linking system.

### Media

- **Attributes**: Details about media files associated with recipes, including a boolean for identifying cover images.
- **Justification**: Separating media allows for multiple images and types of media per recipe and a clear designation of the primary image.

### Comment

- **Attributes**: Content of the comment along with its relationship to User and Recipe.
- **Justification**: Comments need to be associated with both users and recipes for proper context and interaction.

### Rating

- **Attributes**: Numerical star rating with a unique constraint on user and recipe ID.
- **Justification**: The unique constraint ensures that a user can only rate a recipe once, preventing duplicate ratings.

## Relationships

- **User to Recipe**: One-to-many, as a single user can create many recipes, but each recipe is created by one user.
- **User to Comment**: One-to-many, as users can leave multiple comments, but each comment is owned by one user.
- **User to Rating**: One-to-many, as a user can rate many recipes, but each rating is given by one user to one recipe.
- **Recipe to Ingredient**: Many-to-many, as recipes can contain many ingredients and vice versa, requiring a join 
table (not shown for simplicity).
- **Recipe to Media**: One-to-many, as a recipe can have multiple media files, but each media file is associated 
with one recipe.
- **Recipe to Category**: Many-to-many, requiring the RecipeCategory join table.
- **Recipe to DietaryRestriction**: Many-to-many, requiring the RecipeDietaryRestriction join table.

## General Disclaimer on `createdAt` and `updatedAt` Fields

Each table within the domain model includes two critical timestamp fields: `createdAt` 
and `updatedAt`. These fields are essential for maintaining the integrity and traceability 
of the data within our Recipe Web App for several reasons:

- **Data Auditing**: The `createdAt` field records the time at which a new record is added 
to the database. This timestamp is invaluable for tracking the age of the data, understanding growth patterns, and 
auditing purposes.

- **Change Tracking**: The `updatedAt` field is automatically modified to the current timestamp whenever any other 
field in the record is updated. This allows us to track changes over time, which is essential for debugging, 
auditing, and synchronizing with caching systems or other data stores.

- **Consistency**: Implementing these fields across all tables ensures a consistent 
approach to data management. It allows for standardized queries when filtering or sorting 
by date and simplifies the logic for any temporal data analysis.

- **User Experience**: On the user-facing side, these fields can be used to show users the most 
recent or the original content, enhancing transparency and trust in the platform.

- **System Operations**: From a system operations perspective, having uniform timestamp fields 
across all tables simplifies maintenance tasks such as backups, data pruning, and archiving, 
ensuring that these tasks can be automated with consistency.

In summary, the inclusion of `createdAt` and `updatedAt` in each table is a best practice that 
supports a wide range of administrative, user, and system functionalities and 
should be maintained throughout the lifecycle of the app's database schema.

## Conclusion

The domain model is designed to be flexible and scalable, accommodating a wide range of features we envision 
for the Recipe Web App. This structure supports complex queries and operations that are anticipated in a 
dynamic culinary platform.
