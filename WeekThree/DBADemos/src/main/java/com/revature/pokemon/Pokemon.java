package com.revature.pokemon;

public abstract class Pokemon {

	private String name;
	private int level;
	
	public Pokemon(String name, int level) {
		this.name = name;
		this.level = level;
	}
	
	public String getName() {
		return this.name;
	}
	
	public int getLevel() {
		return this.level;
	}
	
	public void sayHello() {
		System.out.println(this.getName() + " says hello!");
	}
	
	public abstract void attack();
	public abstract String[] getTypesStrongAgainst();
	public abstract String[] getTypesWeakAgainst();
}
