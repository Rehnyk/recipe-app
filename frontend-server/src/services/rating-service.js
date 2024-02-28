//const baseUrl = '/api/recipe/rating';
const baseUrl = 'http://localhost:3001/api/recipe/rating';

export const findRecipeRating = async (id) => {
    const response = await fetch(`${baseUrl}/${id}`);

    console.log('RESPONSE:', response);
    return response.json();
};
