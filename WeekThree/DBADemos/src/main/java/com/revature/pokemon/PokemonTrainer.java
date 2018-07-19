package com.revature.pokemon;

public class PokemonTrainer {

	public static void main(String[] args) {
		Charmander c = new Charmander("Char", 14);
		Magmar m = new Magmar("Mag", 47);
		Pokemon[] firePokemon = {c, m}; 
		for (Pokemon f : firePokemon) {
			f.sayHello();
			f.attack();
		}
	}

}
