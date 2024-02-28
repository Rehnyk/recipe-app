import dotenv from 'dotenv';
import cors from 'cors';
import express from 'express';
import { app } from "./factories/app-factory.js";
import authentication from "./middleware/auth.js";

export default async function configure() {
    if (process.env.IS_DOCKER === 'true') {
        // Docker specific configuration
    } else {
        dotenv.config({
            path: '../local.env'
        });
    }

    app.use(express.json());
    app.use(cors());

    // Apply authentication middleware to specific routes that require it
    // Example: app.use('/api', authentication);
    // Do not use app.use(authentication) globally
};
