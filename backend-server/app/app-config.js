import dotenv from 'dotenv';
import {app} from "./factories/app-factory.js";

export default async function configure(){
    let frontEndInjector;

    if (process.env.IS_DOCKER === 'true') {
        /*
        * Inside docker we know that we have already set a volume
        * called /build/frontend/ see docker-compose for more info
        *
        * */
        frontEndInjector = await import("../build/frontend/handler.js");
    }else{
        dotenv.config({
            path: '../local.env'
        });
        /*
         * When developing outside of docker we can easily access
         * the frontend build using logical path structure.
         *
         * In any case make sure that inside frontend-server project
         * you call `npm run build` to generate the build dir for frontend!
         */
        frontEndInjector = await import("../../frontend-server/build/handler.js");
    }

    // Middleware to set CORS headers
    app.use((req, res, next) => {
        // Allow requests from any origin
        res.setHeader('Access-Control-Allow-Origin', '*');
        // Allow specific HTTP methods
        res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');
        // Allow specific headers in the request
        res.setHeader('Access-Control-Allow-Headers', 'Content-Type, Authorization');
        // Allow credentials (cookies, authorization headers, etc.) to be sent in CORS requests
        res.setHeader('Access-Control-Allow-Credentials', true);

        // Handle preflight requests
        if (req.method === 'OPTIONS') {
            // Respond with 200 OK and the allowed methods and headers
            return res.status(200).end();
        }

        // Continue to the next middleware
        next();
    });
    /*
     * Notice:
     *
     * This how we can achieve
     * having the production version of our front-end project
     * loaded inside our back-end server
     * */
    app.use(frontEndInjector.handler);
    // Middleware setup calls
    // app.use(foo)
    // app.use(bar) and so on.
}