package com.revature.oop;

public class Baby extends Child {

	public Baby(String name, int age) {
		super(name, age);
		// Java injects super();
		System.out.println("Constructing Baby...");
	}
	
	public void work() {
		System.out.println("(Baby) I sleep and eat a lot.");
	}
}
