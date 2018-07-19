// PascalCase is a naming convention for classes in which 
// For every word in a class name, we use uppercase letters for the first letter 
public class Person {
	// Declaration of Instance Variables 
	// AKA every object of type Person that we create will have these variables
	int age;
	String name;
	
	// Declaration of a Static Variable 
	// AKA this variable is assoicated with the Person class, not instances of the Person class 
	static int counter;
	
	// Creating a constructor
	public Person() {
		counter++;	// ++ is a PostUnary operator
					// x++ is equivalent to x = x + 1
	}
	
	// Set some state to each instance
	public Person(String name, int age) {
		// The variable "name" of the object you are instantiating
		// will bet set to the "name" argument passed to the 
		// constructor
		this.name = name;
		this.age = age;
		counter++;
	}
	
	
	// toString is an instance method that gets called on an object 
	// every time it is printed
	public String toString() {
		return "name = " + this.name + ", age = " + this.age;
	}
	
	
	static int birthday(int canBeCalledAnythingYouWant) {
		return canBeCalledAnythingYouWant + 1;
	}
	
	
	
	public static void main(String[] bananas) {
		// To instantiate, we must use the "new" keyword
		Person william = new Person();
		Person patrick = new Person("Patrick", 29);
		
		System.out.println(william);
		System.out.println(patrick);
		
		System.out.println("william.name = " + william.name + ", william.age = " + william.age);
		System.out.println("patrick.name = " + patrick.name + ", patrick.age = " + patrick.age);
		System.out.println("Person Objects created = " + counter);
		
		// Pass by Reference example
		birthday(patrick.age);
		System.out.println("Patrick's age is " + patrick.age);
		
		// Pass by Value example 
		patrick.age = birthday(patrick.age);
		System.out.println("Patrick's age is " + patrick.age);
	}
	
}



