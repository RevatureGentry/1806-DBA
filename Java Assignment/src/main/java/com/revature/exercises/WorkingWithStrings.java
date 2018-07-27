package com.revature.exercises;

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
		
		//System.out.println(input);
		for (int i = 0; i < (input.length() / 2); i++) {
			if (input.charAt(i) != input.charAt(input.length() - 1 - i)) {
				return false;
			}
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
		
		String result = "";
		int i = 0;
		
		while (true) {
			try {
				input.charAt(i);
				i++;
			} catch (StringIndexOutOfBoundsException e) {
				i--;
				while (i >= 0) {
					result += input.charAt(i);
					i--;
				}
				break;
			}
		}
		
		return result;
		
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
		
		return input.length() - input.replaceAll("[bB]","").length();
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
		
		return input.length() - input.replace("" + character,"").length();
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
		
		String result = "";
		
		for (int i = 0; i < input.length(); i++) {
			if (!result.toLowerCase().contains((String.valueOf(input.charAt(i))).toLowerCase())) {
				result += input.charAt(i);
			}
		}
		
		return result;
	}

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
		
		try {
			return input.equals(removeDuplicateCharacters(input));
		} catch (IllegalArgumentException e) {
			throw e;
		}
	}

}
