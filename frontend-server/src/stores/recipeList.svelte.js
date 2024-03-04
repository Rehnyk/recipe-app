import * as recipeService from "../services/recipe-service.js"

let recipes = $state([]);

export const initRecipes = async () => {
    recipes = await recipeService.getAllRecipes();
}