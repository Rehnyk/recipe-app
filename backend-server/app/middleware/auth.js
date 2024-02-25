import jwt from 'jsonwebtoken';

export default function isAuthenticated (req, res, next) {

    try {
        console.log('HEADERS:', req.headers)

        // Assuming the token is sent in the authorization header
        // as 'Bearer [token]'
        const token = req.headers.authorization.split(' ')[1];

        console.log('TOKEN:', token);

        const decodedToken = jwt.verify(token, process.env.JWT_SECRET);
        console.log('DECODED TOKEN:', decodedToken);

        // You might want to add the user's information to the request object
        // if you need to access it in your route handlers
        req.userData = { userId: decodedToken.userId };

        console.log('USER DATA:', req.userData);


        next(); // User is authenticated, proceed to the next middleware/route handler
    } catch (error) {
        // If there's no token or it's invalid, return a 401 Unauthorized response
        res.status(401).json({ message: "Authentication failed!" });
    }
}
