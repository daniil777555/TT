class AClass{
    constructor(n){
        this.n = n;
        this.arr = [];
        this.#fill();
    }

    #fill(){
        for(let i = 0; i < this.n; i++){
            this.arr.push(Math.floor(Math.random() * this.n));
        }
    }

    _factorial(){
        return this.arr.map(el => {
            let fact = el
            for(let i = 1; i < el; i++){
                fact *= i
            }
            return fact
        })
    }
}

class Class1 extends AClass{
    constructor(n){
        super(n)
        this.arr = this.sort(this.arr)
    }

    sort(arr){
        if(arr.length === 0) return [];
        let choseEl = arr[0];
        let leftA = [];
        let rightA = [];

        for (let i = 1; i < arr.length; i++) {
            if(arr[i] < choseEl) leftA.push(arr[i]);
            else rightA.push(arr[i]);
        }

        return this.sort(leftA).concat(choseEl, this.sort(rightA));
    }

    get factorial(){
        return this._factorial()
    }
}


class Class2 extends AClass{
    constructor(n){
        super(n)
        this.arr = this.sort(this.arr)
    }

    sort(arr){
        return arr.sort(function(a, b) {
            return a - b;
        });
    }

    get factorial(){
        return this._factorial()
    }
}

let c = new AClass(10);

let c1 = new Class1(10)

let c2 = new Class2(10)

console.log(c1.factorial);
