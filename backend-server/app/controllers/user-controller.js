import * as userService from "../services/user-service.js";
import { addUser, findUserByEmail, updateUser } from "../services/user-service.js";
import {app} from "../factories/app-factory.js";
import bcrypt from 'bcrypt';
import { isAuthenticated } from '../middleware/auth.js'

app.get('/api/users', async (request, response) => {
   const user = await userService.findUser(2)
    response.send(
        `<p> Number of users: ${await userService.usersCount()}</p>` +
        user.name
    );
});
// user registration
app.post('/register', async (req, res) => {
    try {
        const { name, email, password } = req.body;
        const hashedPassword = await bcrypt.hash(password, 10);
        await addUser({ name, email, password: hashedPassword });
        res.status(201).send('User registered successfully');
    } catch (error) {
        res.status(500).send('Error registering user');
    }
});

// User Login
app.post('/login', async (req, res) => {
    try {
        const { email, password } = req.body;
        const user = await findUserByEmail(email);
        if (user && await bcrypt.compare(password, user.password)) {
            // Create session/token here
            res.status(200).send('Login successful');
        } else {
            res.status(401).send('Invalid credentials');
        }
    } catch (error) {
        res.status(500).send('Error logging in user');
    }
});

// Update User Profile
app.put('/users/:id', isAuthenticated, async (req, res) => {
    try {
        const { id } = req.params;
        const { name, email } = req.body;
        await updateUser({ user_id: id, name, email });
        res.status(200).send('User updated successfully');
    } catch (error) {
        res.status(500).send('Error updating user');
    }
});
