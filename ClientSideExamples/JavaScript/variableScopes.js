console.log("==============================================");
console.log("Start of variableScopes.js");
console.log("==============================================");

// When declaring a global variable with var, it gets attached to the window object
var globallyScopedWithVar = "Hey! I was declared using var";

// When declaring a global variable with let, it doesnt
let globallyScopedWithLet = "Hey! I was declared using let";

console.log(window.globallyScopedWithVar);
console.log(window.globallyScopedWithLet);

function pitfallsOfVar() {
    var myVar = "Hello World";
    console.log(myVar);
    var myVar = 13;
    console.log(myVar);
    var myVar = false;
    console.log(myVar);
}

// pitfallsOfVar();

function usingLetOverVar() {
    let myVar = "Hello World";
    console.log(myVar);
    let myVar = 13;
    console.log(myVar);
    let myVar = false;
    console.log(myVar);
}

// usingLetOverVar();

function lexicalEnvironment() {
    let message = "Hello World";
    function innerFunction() {
        console.log("Inside innerFunction");
        function innerInnerFunction() {
            console.log("Inside innerInnerFunction");
            function innerInnerInnerFunction() {
                console.log("Inside innerInnerInnerFunction");
                console.log(message);
                let somethingElse = "Declared inside innerInnerInnerFunction()";
            }
            innerInnerInnerFunction();
        }
        innerInnerFunction();
    }
    innerFunction();
    // console.log(somethingElse);
}

// lexicalEnvironment();


// let apples = "apples";
function howLetProvidesBlockScope() {
    let apples = "apples";
    console.log(apples);
    // let apples = "changing the value";
    function innerFunction() {
        let apples = "changing the value";
        console.log(apples);
        function anotherNestedFunction() {
            let apples = "Inside the nestedFunction";
            console.log(apples);
        }
        anotherNestedFunction();
    }
    innerFunction();
}

// howLetProvidesBlockScope();