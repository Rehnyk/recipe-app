import express from 'express';

export const app = express();


export async function startApp(port = 3000){
    return new Promise((resolve,reject)=>{
        app.listen(port, () => {
            console.log(`Server is listening on port ${port}`);
            resolve('App started');
        });
    });
}