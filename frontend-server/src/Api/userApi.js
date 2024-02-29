const BASE_URL = 'http://localhost:3001'; 

export const registerUser = async (userData) => {
    const response = await fetch(`${BASE_URL}/register`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(userData),
    });

    const contentType = response.headers.get("content-type");

    if (!response.ok) {
        if (contentType && contentType.includes("application/json")) {
            // If the response is JSON, parse it and throw an error with its message
            const errorData = await response.json();
            throw new Error(errorData.message || 'Registration failed');
        } else {
            // If the response is not JSON, simply throw a generic error
            throw new Error('Registration failed');
        }
    }

    if (contentType && contentType.includes("application/json")) {
        return response.json();
    } else {
        // If the successful response is not JSON, you might just return a success message
        // or handle it according to your application's needs
        return 'Registration successful';
    }
};


export const loginUser = async (userData) => {
    const response = await fetch(`${BASE_URL}/login`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(userData),
    });

    const contentType = response.headers.get("content-type");

    if (!response.ok) {
        if (contentType && contentType.includes("application/json")) {
            // If the response is JSON, parse it and throw an error with its message
            const errorData = await response.json();
            throw new Error(errorData.message || 'Login failed');
        } else {
            // If the response is not JSON, throw a generic error
            throw new Error('Login failed');
        }
    }

    if (contentType && contentType.includes("application/json")) {
        return response.json();
    } else {
        // If the successful response is not JSON, handle accordingly
        return 'Login successful';
    }
};


export const updateUser = async (userId, userData) => {
    const response = await fetch(`${BASE_URL}/users/${userId}`, {
        method: 'PUT',
        headers: { 
            'Content-Type': 'application/json',
            // Include your authentication token in headers if needed
        },
        body: JSON.stringify(userData),
    });
    if (!response.ok) {
        throw new Error('User update failed');
    }
    return response.json();
};
