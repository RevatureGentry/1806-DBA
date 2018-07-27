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
		if  ( input == null)  {
			return false;
			
		}
		else {
			String rev = input.replaceAll("[^a-zA-Z]", "");
			int i;
			String reverse = "";
			for (i = rev.length() - 1; i >= 0; i--) {
				reverse = reverse + rev.charAt(i);
			}
			if (rev.equals(reverse)) {
				return true;
			} 
			else {
			return false;
			}
		}
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
		else {
			int i;
			String rev = "";
			for (i = input.length() - 1; i >= 0; i--) {
				rev = rev + input.charAt(i);
			}
			return rev;
		}
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
		int i;
		int count = 0;
		for (i = input.length() - 1; i >= 0; i--) {
			char letter = input.charAt(i);
			if (letter == 'b' || letter == 'B')
				count++;
		}
		return count;
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
		int i;
		int count = 0;
		for (i = input.length() - 1; i >= 0; i--) {
			char letter = input.charAt(i);
			if (letter == character) {
				count++;
				}
			}
		return count;
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

		return null;
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
		
		return null;
	}

}
