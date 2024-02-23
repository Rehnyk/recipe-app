const BASE_URL = 'http://localhost:3001'; 

export const registerUser = async (userData) => {
    const response = await fetch(`${BASE_URL}/register`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(userData),
    });
    if (!response.ok) {
        throw new Error('Registration failed');
    }
    return response.json();
};

export const loginUser = async (userData) => {
    const response = await fetch(`${BASE_URL}/login`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(userData),
    });
    if (!response.ok) {
        throw new Error('Login failed');
    }
    return response.json();
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
