package com.revature.exercises;

import java.util.LinkedHashSet;
import java.util.TreeSet;

public class WorkingWithStrings {

	/**
	 * @author William
	 * @param input
	 * @return whether the String is a palindrome
	 * 
	 *         Write an implementation that takes a String, and returns true or
	 *         false for if the String is a palindrome
	 * 
	 */
	public static Boolean isPalindrome(String input) {

		if (input == null) {
			return false;
		}
		input = input.replaceAll("\\W", "");
		int a = input.length();
		for (int i = 0; i <= input.length() / 2; i++) {

			if (!(input.charAt(i) == input.charAt(a - 1))) {
				return false;
			}
			a = a - 1;
		}
		return true;
	}

	/**
	 * @author William
	 * @param input
	 * @return the reversed value provided
	 * 
	 *         Write an implementation that takes a String, and returns the reverse
	 * 
	 *         You may not use the built in reverse method!
	 * 
	 *         CHALLENGE: Reverse the String using ONLY {@link String#charAt(int)}
	 */

	public static String reverse(String input) {

		if (input == null) {
			throw new IllegalArgumentException();
		}
		String word1;
		String word2 = "";

		for (int i = input.length(); i > 0; i--) {
			word1 = input.substring(i - 1, i);
			word2 = word2 + word1;
		}
		return word2;

	}

	/**
	 * @author William
	 * 
	 * @param input
	 * @return the number of occurences of the letter `b` in the provided String
	 * 
	 *         Write an implementation that counts the number of times the letter b
	 *         is in the String argument
	 * 
	 */
	public static Integer countBs(String input) {

		int counter = 0;
		for (int i = 0; i < input.length(); i++) {
			char sme = input.charAt(i);
			if (sme == 'b' || sme == 'B') {
				counter++;
			}
		}
		return counter;
	}

	/**
	 * @author William
	 * 
	 * @param input
	 * @param character
	 * @return the number of occurences of the provided character in the String
	 *         argument
	 * 
	 *         Write an implementation that counts the number of times the supplied
	 *         character occurs in the String argument
	 */

	public static Integer countCharacter(String input, char character) {

		int counter = 0;
		for (int i = 0; i < input.length(); i++) {
			char sme = input.charAt(i);
			if (sme == character) {
				counter++;
			}
		}
		return counter;
	}

	/**
	 * @author William
	 * @param input
	 * @return the provided String without any duplicate characters
	 * 
	 *         Write an implementation that removes all of the duplicate characters
	 *         in a String, and returns it. For example, if the argument is
	 *         `Programming`, the method should return `Progamin`
	 */

	public static String removeDuplicateCharacters(String input) {
		if (input == null) {
			throw new IllegalArgumentException();
		}

		String EndString = "";
		for (int i = 0; i < input.length(); i++) {
			if (!EndString.toUpperCase().contains(input.substring(i, i + 1).toUpperCase())) {
				EndString = EndString + input.substring(i, i + 1);
			}
		}
		return EndString;
	}

	// CASE SENSITIVE
	/*
	 * if (input == null) { throw new IllegalArgumentException(); }
	 * 
	 * char[] inputarray = input.toCharArray(); LinkedHashSet<Character> lhs = new
	 * LinkedHashSet<Character>();
	 * 
	 * for(int i = 0; i < inputarray.length; i++) { lhs.add(inputarray[i]); } String
	 * endstring = ""; for(char c: lhs) { endstring = endstring + c; }
	 * System.out.println(endstring); return endstring;
	 */

	/**
	 * @author William
	 * @param input
	 * @return whether the String contains unique characters only
	 * 
	 *         Write an implementation that determines whether the provided string
	 *         contains only unique letters or not. For example, `Revature` should
	 *         return false
	 */

	public static Boolean uniqueCharactersOnly(String input) {
		if (input == null) {
			throw new IllegalArgumentException();
		}

		for (int i = 0; i < input.length(); i++) {
			char value = input.charAt(i);
			/*
			 * for (int a = 0; a < i; a++) { if(value == input.charAt(a)) { return false; }
			 * }
			 */
			for (int a = i + 1; a < input.length(); a++) {
				if (value == input.charAt(a)) {
					return false;
				}
			}
		}
		return true;

	}

}
