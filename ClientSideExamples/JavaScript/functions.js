console.log("==================================");
console.log("Start of functions.js");
console.log("==================================");

// Functions can be anonymous
let add = function(a=0, b=0) {
    return a + b;
};

console.log(add);
console.log(add(10, 20));
console.log(add());


// Functions can be Self-Invoking (IIFE's, or Immediately Invoked Function Expressions)
(function(name="Guy") {
    console.log(`Hello, ${name}! You are being greeted from a self-invoking function.`);
})();

// Three different popups available in JS. Be warned, they are bad practice and very annoying
function annoyingPopups() {
    // Alert is simply a message to your user
    alert("Hello World!");

    // Confirm 
    let resultFromConfirm = confirm("Are you sure you want to leave this page");
    console.log(`resultFromConfirm = ${resultFromConfirm}`);

    // Prompt
    let name = prompt("What is your name?");
    console.log(`name = ${name}`);
}

function declaredFunctionTest() {
    this.counter = 0;
    console.log("Inside declaredFunctionTest");
    function incrementCounter() {
        console.log(this);
        for (let i = 0; i < 10; i++) {
            console.log(`counter: ${this.counter++}`);
        }
    }
    incrementCounter();
}

let declaredTest = new declaredFunctionTest();

function arrowFunctionTest() {
    this.counter = 0;
    console.log("Inside arrowFunctionTest");
    let incrementCounter = () => {
        console.log(this);
        for (let i = 0; i < 10; i++) {
            console.log(`counter: ${this.counter++}`);
        }
    }
    incrementCounter();
}

let arrowTest = new arrowFunctionTest();


let square = x => x * x;