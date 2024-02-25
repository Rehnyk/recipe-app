const controllers = [
    "./controllers/default-controller.js",
    "./controllers/user-controller.js",
];


/**
 * Make sure all of app's controllers are imported in this file!
 * @returns {Promise<void>}
 */

export default async function load(){
    for(const module of controllers){
        await import(module);
    }
}
