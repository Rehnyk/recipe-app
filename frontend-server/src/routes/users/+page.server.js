
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

async function remoteLoad(){
    let d = await fetch('http://backend:3001/api/foo');
    return d.json();
}

/** @type {import('./$types').PageLoad} */
export async function load({params}) {

    // const results = await loadDummyData();
    const results = await remoteLoad();
    console.log('Yeeay data', results);

    console.log('Hello from login page');

    return {
        results
    };


}