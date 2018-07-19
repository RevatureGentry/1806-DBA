package com.revature.pokemon;

public class Magmar extends FirePokemon {

	public Magmar(String name, int level) {
		super(name, level);
	}
	
	public void attack() {
		System.out.println(this.getName() + " attacks with Smokescreen!");
	}
}
