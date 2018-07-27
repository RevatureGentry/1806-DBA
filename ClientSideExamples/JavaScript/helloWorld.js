// This is a single line comment
/* 
* Multi=line comment
*/

// Variable Declaration

var someSymbol = Symbol();

console.log("3 == '3' => ", 3 == '3');

// Template Literal
console.log(`3 === '3' =>  ${3 === '3'}`);
console.log(`A random number: ${Math.random()}`);


// typeof operator
console.log(`typeof 3 => ${typeof 3}`);
console.log(`typeof 'Java' => ${typeof "Java"}`);
console.log(`typeof false => ${typeof false}`);
console.log(`typeof whatName => ${typeof whatName}`);
console.log(`typeof null => ${typeof null}`);
console.log(`typeof someSymbol => ${typeof someSymbol}`);
console.log(`typeof NaN => ${typeof NaN}`);
console.log(`typeof 100/0 => ${typeof 100/0}, value => ${100/0}`);
console.log(`typeof 100/-0 => ${typeof 100/-0}, value => ${100/-0}`);
console.log(`typeof [] => ${typeof []}`);
console.log(`typeof {} => ${typeof {}}`);
console.log(`typeof dummyFunction => ${typeof dummyFunction}`);
console.log(`typeof new dunnyFunction => ${typeof new dummyFunction()}`);

// This function is being hoisted
function dummyFunction() {
    console.log('Hello World');
}


// Truthy and Falsey - null and undefined
console.log(`null == null => ${null == null}`);
console.log(`null == undefined => ${null == undefined}`);
console.log(`undefined == null => ${undefined == null}`);
console.log(`undefined == undefined => ${undefined == undefined}`);
console.log(`null === null => ${null === null}`);
console.log(`null === undefined => ${null === undefined}`);
console.log(`undefined === null => ${undefined === null}`);
console.log(`undefined === undefined => ${undefined === undefined}`);

// Truthy and Flasey
console.log(`false == 0 => ${false == 0}`);
console.log(`false == '' => ${false == ''}`);
console.log(`false === 0 => ${false === 0}`);
console.log(`false === '' => ${false === ''}`);
console.log(`NaN == NaN => ${NaN == NaN}`);
console.log(`NaN === NaN => ${NaN === NaN}`);
