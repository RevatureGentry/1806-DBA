package com.revature.pokemon;

public class Charmander extends FirePokemon {

	public Charmander(String name, int level) {
		super(name, level);
	}

	@Override
	public void attack() {
		System.out.println(this.getName() + " attacks with Ember!");
	}
}
