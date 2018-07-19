package com.revature.oop;

public class Parent extends Object {

	// Step one to making a class immutable
	private final String name;
	
	// Step two to making a class immutable is to have 
	// the only way to instantiate an object is by setting all of its state
	public Parent(String name) {
		this.name = name;
		System.out.println("Constructing Parent...");
	}
	
	// Step three to making a class immutable is to only have getters
	public String getName() {
		return this.name;
	}
	
	public void work() {
		System.out.println("(Parent) I work 9-5, Monday through Friday.");
	}
	
	public String toString() {
		return "(Parent) Name: " + this.getName();
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Parent other = (Parent) obj;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		return true;
	}
	
	
}
