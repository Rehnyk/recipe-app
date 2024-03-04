const baseUrl = 'http://localhost:3001/api/recipe';

export const getAllRecipes = async () => {
    const response = await fetch(`${baseUrl}`);
    return response.json();
};