import {error} from '@sveltejs/kit';

function loadDummyData() {
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            resolve([{
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
            },]);
        }, 1000);
    });
}

/** @type {import('./$types').PageLoad} */
export async function load({params}) {

    const results = await loadDummyData();
    console.log('Yeeay data', results);


    /*    if (params.slug === 'hello-world') {
        return {
            title: 'Hello world!',
            content: 'Welcome to our blog. Lorem ipsum dolor sit amet...'
        };
    }*/
    console.log('Hello from login page');
    // error(404, 'Not found');
    return {
        results
    };
}