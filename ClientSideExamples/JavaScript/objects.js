console.log("===============================");
console.log("Start of objects.js");
console.log("===============================");

// Object Literal Notation
let employee1 = {
    name: {
        first: "William",
        last: "Gentry"
    },
    occupation: "Software Engineer",
    languages: ["Java", "SQL", "JavaScript", "HTML", {spoken: ["English", "Spanish"]}],
    sayHello: function() {
        console.log("Hello!");
    }
};

console.log(`typeof employee1 => ${typeof employee1}`);
// console.log(employee1);
console.log(employee1.name.first);
console.log(employee1["name"]["last"]);
console.log(employee1.languages[4].spoken[1]);

// In JavaScript, we can on the fly add new properties to Objects
employee1.carDriven = "Toyota 4Runner";
employee1.languages = "English";
console.log(employee1.carDriven);
console.log(employee1.languages);


// Instantiation of Object
const employee2 = new Object();
// employee2.name = {
//     first: "Patrick",
//     last: "Walsh"
// }
let empName = new Object();
empName.first = "Patrick";
empName.last = "Walsh";
employee2.name = empName;
employee2.occupation = "Manager of Technology";
employee2.languages = ["Java", "JavaScript", "SQL", "HTML", "TypeScript", "C", "C++"];
// employee2.languages = "Spanish";
console.log(employee1);
console.log(employee2);


// Using a "Constructor"
function Employee(firstname, lastname, occupation, ...languages) {  // rest operator
    this.name = {
        first: firstname,
        last: lastname
    };
    this.occupation = occupation;
    this.languages = languages;
}

let employee3 = new Employee("John", "Smith", "System Administrator", "C", "Bash");
console.log(employee3);