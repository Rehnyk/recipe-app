import {app} from "../factories/app-factory.js";
import * as fooService from "../services/foo-service.js";

app.get('/api/foo', async (request, res) => {
    res.setHeader('Access-Control-Allow-Origin', '*');
    // Allow specific HTTP methods
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');
    // Allow specific headers in the request
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type, Authorization');
    // Allow credentials (cookies, authorization headers, etc.) to be sent in CORS requests
    res.setHeader('Access-Control-Allow-Credentials', true);
    //   console.log(fooService.fooFunc())
    res.send(
        [{
            id: 1234,
            name: 'foo'
        }, {
            id: 1235,
            name: 'bar'
        }, {
            id: 1236,
            name: 'baz'
        }, {
            id: 1237,
            name: 'hoo'
        }]
    );

})