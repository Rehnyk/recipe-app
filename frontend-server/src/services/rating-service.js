const baseUrl = 'http://localhost:3001/api/recipe/rating';

export const findRecipeRating = async ({ recipeId }) => {
    const response = await fetch(`${baseUrl}/${recipeId}`);

    console.log('RESPONSE 1:', response);
    return response.json();
};

export const findUserRecipeRating = async ({ recipeId, userId }) => {
    const response = await fetch(`${baseUrl}/${recipeId}/${userId}`);

    console.log('RESPONSE:', response);
    return response.json();
};

export const addRating = async ({ recipeId, userId, stars }) => {
    const response = await fetch(`${baseUrl}/${recipeId}`,
        { method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({'userId': userId, 'stars': stars})
        });

    console.log('RESPONSE:', response);
    return response.json();
};

export const changeRating = async ({ recipeId, userId, stars }) => {
    const response = await fetch(`${baseUrl}/${recipeId}/${userId}`,
        { method: 'PUT',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({'stars': stars})
        });

    console.log('RESPONSE:', response);
    return response.json();
};

export const removeRating = async ({ recipeId, userId }) => {
    const response = await fetch(`${baseUrl}/${recipeId}/${userId}`,
        { method: 'DELETE'});

    console.log('RESPONSE:', response);
    return response;
};