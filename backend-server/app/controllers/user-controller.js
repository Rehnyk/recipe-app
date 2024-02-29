import * as userService from "../services/user-service.js";
import { app } from "../factories/app-factory.js";
import bcrypt from 'bcrypt';

app.get('/api/users', async (request, response) => {
    try {
        const user = await userService.findUser(2);
        response.send(
            `<p> Number of users: ${await userService.usersCount()}</p>` +
            user.name
        );
    } catch (error) {
        console.error('Error fetching users:', error);
        response.status(500).send('Error fetching users');
    }
});

app.post('/register', async (req, res) => {
    try {
        const { name, email, password } = req.body;
        const hashedPassword = await bcrypt.hash(password, 10);
        await userService.addUser({ name, email, password: hashedPassword });
        res.status(201).send('User registered successfully');
    } catch (error) {
        console.error('Error registering user:', error);
        res.status(500).send('Error registering user');
    }
});

app.post('/login', async (req, res) => {
    try {
        const { email, password } = req.body;
        const user = await userService.findUserByEmail(email);
        if (user && await bcrypt.compare(password, user.password)) {
            // Send back the user's name along with the success message
            res.status(200).json({ message: 'Login successful', name: user.name });
        } else {
            res.status(401).send('Invalid credentials');
        }
    } catch (error) {
        console.error('Error logging in user:', error);
        res.status(500).send('Error logging in user');
    }
});


app.put('/users/:id', async (req, res) => {
    try {
        const { id } = req.params;
        const { name, email } = req.body;
        await userService.updateUser({ user_id: id, name, email });
        res.status(200).send('User updated successfully');
    } catch (error) {
        console.error('Error updating user:', error);
        res.status(500).send('Error updating user');
    }
});
