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
	    if (input == null)
		return false;

	    String lowerCase = input.replaceAll("[^a-zA-Z]","");
	    String answer = lowerCase.toLowerCase();
		
	    int length = answer.length();
	    int forward = 0;
	    int backward = length - 1;
	    
	    while (backward > forward) {
	        char forwardChar = answer.charAt(forward++);
	        char backwardChar = answer.charAt(backward--);
	        if (forwardChar != backwardChar)
	            return false;
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
	    if (input == null )
		throw new IllegalArgumentException();
		
	    char string[] = input.toCharArray();  
	    String reverse = ""; 
	    
	    for(int i = string.length-1 ; i>=0 ; i--){  
	    	reverse += string[i];  
	    }  
	    return reverse; 
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
		String lowerCase = input.toLowerCase();
		int count = lowerCase.length() - lowerCase.replace("b", "").length();
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
		int count = input.length() - input.replace(Character.toString(character), "").length();
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
		if (input == null)
			throw new IllegalArgumentException();
		
		char[] letters = input.toCharArray();
		int length = letters.length;

		for (int i = 0; i < length; i++) {
            	    for (int f = i + 1; f < length; f++) {
                	if (Character.toString(letters[i]).equalsIgnoreCase(Character.toString(letters[f]))) {
			    int temp = f;

			    for (int n = temp; n < length - 1; n++) {
				letters[n] = letters[n + 1];
			    }
			    f--;
			    length--;
 
                }
            }
        }
		String noDuplicates = new String(letters);
		noDuplicates = noDuplicates.substring(0, length);
		return noDuplicates;
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
	    if (input == null)
		throw new IllegalArgumentException();
	        for (int i=0; i<input.length(); i++)
		    for (int j=i+1; j<input.length(); j++)
			if (input.charAt(i) == input.charAt(j))
			    return false;
        return true;
	}

}
