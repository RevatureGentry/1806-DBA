package com.revature.pokemon;

public abstract class FirePokemon extends Pokemon implements Fire {

	public FirePokemon(String name, int level) {
		super(name, level);
	}
	
	public String[] getTypesStrongAgainst() {
		return Fire.typesStrongAgainst;
	}
	
	public String[] getTypesWeakAgainst() {
		return Fire.typesWeakAgainst;
	}
}
