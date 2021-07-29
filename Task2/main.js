// const getJson = url => fetch(url).then(res => res.json());

// getJson('/i/1.json')
// .then(json => {
//     if (json.key) {
//         return getJson('/i/2.json')
//     }
//     throw new Error('No key')
// })
// .then(json => {
//     return json.key2
// })
// .catch(error => {
//     console.error(error)
// })

async function getJson(url, obj = {}){
    let res = await fetch(url, obj);
    return await res.json();
}

async function getData(url, obj = {}){
    try{
        let res = await getJson(url, obj = {})
        if(res.key){
            return await getJson('/i/2.json');
        } else throw new Error('No key');
    } catch(error){
        console.error(error)
    }  finally{
        return res.key2
    }
}