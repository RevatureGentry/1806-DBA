console.log("================")

// Object Literal Notation 

let employee1 = {
    name: {
        first: "Kevin",
        last: "Hui",
    },
    occupation: "Software Engineer",
    languages: ["SQL", "Java", "JavaScript", "HTML"],
    sayHello: function() {
        console.log("Hello World");
    }
};

console.log(`typeof employee1 => ${typeof employee1}`);
console.log(employee1.name.first);
console.log(employee1["name"]["last"]);