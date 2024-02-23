import jwt from 'jsonwebtoken';

export function isAuthenticated(req, res, next) {
    try {
        // Assuming the token is sent in the authorization header
        // as 'Bearer [token]'
        const token = req.headers.authorization.split(' ')[1];
        const decodedToken = jwt.verify(token, process.env.JWT_SECRET);

        // You might want to add the user's information to the request object
        // if you need to access it in your route handlers
        req.userData = { userId: decodedToken.userId };

        next(); // User is authenticated, proceed to the next middleware/route handler
    } catch (error) {
        // If there's no token or it's invalid, return a 401 Unauthorized response
        res.status(401).json({ message: "Authentication failed!" });
    }
}
