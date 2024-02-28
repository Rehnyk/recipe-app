import dotenv from 'dotenv';
import cors from 'cors';
import express from 'express';
import {app} from "./factories/app-factory.js";
import authentication from "./middleware/auth.js";

export default async function configure(){
    let frontEndInjector;

    if (process.env.IS_DOCKER === 'true') {
        /*
        * Inside docker we know that we have already set a volume
        * called /build/frontend/ see docker-compose for more info
        *
        * */
     //   frontEndInjector = await import("../build/frontend/handler.js");
    } else {
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
      //  frontEndInjector = await import("../../frontend-server/build/handler.js");
    }

    app.use(express.json());
    app.use(cors());
    app.use(authentication);

   // app.use(frontEndInjector.handler);
};