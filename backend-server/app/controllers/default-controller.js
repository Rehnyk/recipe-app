import * as userService from "../services/user-service.js";
import {app} from "../factories/app-factory.js";

/**
 * This path actually should reflect our frontend pages and setup
 * However until the team is able to configure these two project to
 * run as a single run, we just show hello world!
 */
app.get('/', (req, res) => {
    res.send('Hello World!');
});
