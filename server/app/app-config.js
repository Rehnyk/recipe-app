import dotenv from 'dotenv';
import {app} from "./factories/app-factory.js";
export default async function configure(){

    /*
    * If you want to load a custom e.env file in your machine
    * or somewhere outside of docker we can check IS_DOCKER
    *
    * Make sure that docker.env file has indeed a line `IS_DOCKER=true`
    * */
    if (process.env.IS_DOCKER !== 'true') {
        dotenv.config({
            //if you want to make local.env for yourself
            //make sure it's ignored in git
            //it can contain sensitive personal vars custom to your machine!
            path: '../local.env'
        });
    }

    // Middleware setup calls
    // app.use(foo)
    // app.use(bar) and so on.
}