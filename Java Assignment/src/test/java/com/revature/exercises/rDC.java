package com.revature.exercises;

public class rDC {
	
public static String removeDuplicateCharacters(String input) {
		
		if (input == null) {
			throw new IllegalArgumentException();
		}
		else {
			input = input.toLowerCase();
			String uniqueString = "";
			for (int i = 0; i < input.length(); i++) {
				if (!uniqueString.contains(String.valueOf(input.charAt(i)))) {
					uniqueString += input.charAt(i);
				}
			}
			System.out.println(uniqueString);
			System.out.println("Contius egra");
			System.out.println(uniqueString == "Contius egra");
			return uniqueString;
		}
	}
	public static void main(String[] args) {
		removeDuplicateCharacters("Continuous Integration");
	}
}
