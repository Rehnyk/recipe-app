import dotenv from 'dotenv';
import cors from 'cors';
import express from 'express';
import { app } from "./factories/app-factory.js";
import authentication from "./middleware/auth.js";

export default async function configure() {
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

    //    frontEndInjector = await import("../../frontend-server/build/handler.js");
    }

    app.use(express.json());
    app.use(cors());

   // app.use(frontEndInjector.handler);
};

    // Apply authentication middleware to specific routes that require it
    // Example: app.use('/api', authentication);
    // Do not use app.use(authentication) globally

