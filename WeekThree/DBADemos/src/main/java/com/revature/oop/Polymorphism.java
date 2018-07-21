package com.revature.oop;

import java.lang.reflect.Method;
import java.util.Arrays;

public class Polymorphism extends Object {

	public static void main(String[] args) {
		// Demonstrate via Reflection that this class inherits from java.lang.Object
		for (Method m : Polymorphism.class.getMethods()) {
			if (m.getName().equals("add")) {
				System.out.println("Name: " + m.getName());
				System.out.println("Return Type: " + m.getReturnType());
				System.out.print("Parameters: ");
				Arrays.asList(m.getParameters()).forEach(param -> System.out.print(param + " "));
				System.out.println("\n");
			}
		}
		add(10, 20);
		add(10, 21.1);
		add("William", "loves Java!");
		add(1, 2, 4);
	}
	
	// Method Overloading
	public static int add(int a, int b) {
		System.out.println("Inside the 2 int add method");
		return a + b;
	}
	
	public static int add(int a, int b, int c) {
		System.out.println("Inside the 3 int add method");
		return a + b + c;
	}
	
	public static double add(int a, double b) {
		System.out.println("Inside the 1 int, 1 double add method");
		return a + b;
	}

	
	public static String add(String s1, String s2) {
		System.out.println("Inside the 2 String add method");
		return s1 + " " + s2;
	}
}
