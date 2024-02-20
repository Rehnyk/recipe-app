import dotenv from 'dotenv';
import {app} from "./factories/app-factory.js";
export default async function configure(){

    /*
    * The below setup is necessary for production runs, and testing the
    * front project embedding inside the backend server. However,
    * due to not all team members being informed how to make this setup
    * work in their envs we will disable it until enough docs and guide
    * is provided.
    * */

    // let frontEndInjector;
    //
    // if (process.env.IS_DOCKER === 'true') {
    //     /*
    //     * Inside docker we know that we have already set a volume
    //     * called /build/frontend/ see docker-compose for more info
    //     *
    //     * */
    //     frontEndInjector = await import("../build/frontend/handler.js");
    // }else{
    //     dotenv.config({
    //         path: '../local.env'
    //     });
    //     /*
    //      * When developing outside of docker we can easily access
    //      * the frontend build using logical path structure.
    //      *
    //      * In any case make sure that inside frontend-server project
    //      * you call `npm run build` to generate the build dir for frontend!
    //      */
    //     frontEndInjector = await import("../../frontend-server/build/handler.js");
    // }
    //
    // /*
    //  * Notice:
    //  *
    //  * This how we can achieve
    //  * having the production version of our front-end project
    //  * loaded inside our back-end server
    //  * */
    // app.use(frontEndInjector.handler);
    if (process.env.IS_DOCKER !== 'true') {
        dotenv.config({
            path: '../local.env'
        });
    }
    // Middleware setup calls
    // app.use(foo)
    // app.use(bar) and so on.
}