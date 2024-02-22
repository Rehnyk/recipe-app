import * as userService from "../services/user-service.js";
import {app} from "../factories/app-factory.js";

app.get('/api/users', async (request, response) => {
    response.send(
        `<p>Number of users: ${await userService.usersCount()}</p>`
    );
});