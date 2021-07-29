async function func(){
    let count = 0;

    const getData = () => Promise.resolve(++count);
    const sleep = (n) => new Promise(resolve => setTimeout(resolve, n));

    const getJsonMemorize = memorize(getData, 1000);

    console.log(await getJsonMemorize()); // 1
    console.log(await getJsonMemorize()); // 1
    await sleep(3000);
    console.log(await getJsonMemorize()); // 2
}

function memorize(fn, time){
    const cache = {};

    return function(){
        if(!cache[1]) cache[1] = fn();
        else setTimeout(fn().then(n => cache[1] = n), time);

        return cache[1];
    }
}

func();

