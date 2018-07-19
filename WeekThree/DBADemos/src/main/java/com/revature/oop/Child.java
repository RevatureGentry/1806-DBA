package com.revature.oop;

public class Child extends Parent {
	
	private final int age;

	// The first line of any constructor is either `super()` or `this()`
	// Whenever you construct an object, the parent class always gets constructed first
	public Child(String name, int age) {
		super(name);
		this.age = age;
		System.out.println("Constructing Child...");
	}
	
	public Child() {
		this("Default name", 0);
	}
	
	public int getAge() {
		return this.age;
	}
	
	// Method Overriding the same method signature in a child class 
	// as a method in the parent class, but with a different implementation
	public void work() {
		System.out.println("(Child) I play Minecraft and Fortnite 16 hours a day");
	}
	
	public String toString() {
		return "(Child) Name: " + this.getName() + ", Age: " + this.getAge();
	}
}
