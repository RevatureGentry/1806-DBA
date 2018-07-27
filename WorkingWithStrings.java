package com.revature.exercises;

public class WorkingWithStrings {

	public static Boolean isPalindrome(String input) {
		
				
		if (input == null) 
						{
						return false;
						}
		   int n = input.length();
		    for( int i = 0; i < n/2; i++ ) {
		        if (input.charAt(i) != input.charAt(n-i-1)) 
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
		if (input == null) 	{
							throw new IllegalArgumentException("illegal");
							}
		     char[] rev = input.toCharArray();
		    int n=0;
		    int d=rev.length-1;
		    char x;
		    while(d>n){
		        x = rev[n];
		        rev[n]=rev[d];
		        rev[d] = x;
		        d--;
		        n++;
		    		}
		    		return new String(rev);
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
		if (input == null) {
			throw new IllegalArgumentException("illegal");
							}
		int x = 0;
		for (int i = input.length() - 1; i >= 0; i--) {
			char y = input.charAt(i);
			if (y == 'b' && y == 'B')
				x++;
		           }
					return x;
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
	
		int x = 0;
		for (int i = input.length() - 1; i >= 0; i--) {
			char y = input.charAt(i);
			if (y == character)
				x++;
		           }
					return x;
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
			throw new IllegalArgumentException("illegal");
							}
			String noDouple = new String("");
		    for (int i = 0; i < input.length(); i++) {
		    if ( ! noDouple.contains("" + input.charAt(i)) )
		    				{
		        	noDouple+="" + input.charAt(i);
		    				}
		   					}
		        		    return noDouple;
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
		
		if (input == null) {
			throw new IllegalArgumentException("illegal");
							}
			for (int i = 0; i < input.length() - 1; i++) {
						for (int j = i + 1; j < input.length(); j++) {
							if (input.charAt(i) == input.charAt(j)) 
							{
							return false;
							}
							}
							}
							return true;
							}
							}
