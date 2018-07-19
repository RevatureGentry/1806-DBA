package com.revature.oop;

public class PolymorphismDemo {

	public static void main(String[] args) {
		Parent p = new Parent("Albert");
		Child c = new Child("John", 12);
		Baby b = new Baby("Jack-Jack", 2);
		
		Parent[] people = new Parent[] {p, c, b};
		for (Parent p2 : people) {
			System.out.println(p2);
			p2.work();
		}
	}

}
