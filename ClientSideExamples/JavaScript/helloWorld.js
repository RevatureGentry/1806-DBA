// This is a single line comment
/*
*   This is a multi-line comment
*/

console.log("3 == '3' => ", 3 == '3');

// Template Literal
console.log(`3 === '3' => ${3 === '3'}`);
console.log(`A random number: ${Math.random()}`);

// typeof operator
console.log(`typeof 3 => ${typeof 3}`);
console.log(`typeof 'Java' => ${typeof "Java"}`);
console.log(`typeof false => ${typeof false}`);
console.log(`typeof name => ${typeof dylan}`);
console.log(`typeof someSymbol => ${typeof Symbol()}`);
console.log(`typeof NaN => ${typeof NaN}`);
console.log(`typeof 100/0 => ${typeof (100/0)}, value = ${100/0}`);
console.log(`typeof 100/-0 => ${typeof (100/-0)}, value = ${100/-0}`);
console.log(`typeof [] => ${typeof []}`);
console.log(`typeof {} => ${typeof {}}`);
console.log(`typeof dummyFunction => ${typeof dummyFunction}`);
console.log(`typeof new dummyFunction() => ${typeof new dummyFunction()}`);


function dummyFunction() {} // This function is being hoisted

// Truthy and Falsy - null and undefined
console.log(`null == null => ${null == null}`);
console.log(`null == undefined => ${null == undefined}`);
console.log(`undefined == null => ${undefined == null}`);
console.log(`undefined == undefined => ${undefined == undefined}`);
console.log(`null === null => ${null === null}`);
console.log(`null === undefined => ${null === undefined}`);
console.log(`undefined === null => ${undefined === null}`);
console.log(`undefined === undefined => ${undefined === undefined}`);

// Truthy and Falsy
console.log(`false == 0 => ${false == 0}`);
console.log(`false == '' => ${false == ''}`);
console.log(`NaN == NaN => ${NaN == NaN}`);
console.log(`NaN === NaN => ${NaN === NaN}`);

// Conditional statements with Truthy/Falsy values
if ('') {
    console.log("The empty string is truthy");
} else {
    console.log("The empty string is falsy");
}

if ({}) {
    console.log("Object literal is truthy");
} else {
    console.log("Object literal is falsy");
}

if (NaN) {
    console.log("NaN is truthy");
} else {
    console.log("NaN is falsy");
}

someOtherFunction();

// Variable Scopes
// Globally Scopes means that a variable is defined not in any block, can be accessed anywhere
console.log(globallyScoped);

// const - once initialized, it cannot be changed. const also establishes block scope
const PI = 3.14;

// let - established block scope, but it can be changed
function exampleOfBlockScopeWithLet() {
    let myVar = "William";
    console.log(myVar);
}