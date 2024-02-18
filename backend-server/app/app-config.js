import dotenv from 'dotenv';
import {app} from "./factories/app-factory.js";
export default async function configure(){

    if (process.env.IS_DOCKER !== 'true') {
        dotenv.config({
            path: '../local.env'
        });
    }

    // Middleware setup calls
    // app.use(foo)
    // app.use(bar) and so on.
}