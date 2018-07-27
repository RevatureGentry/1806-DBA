package com.revature.exercises;

public class Abc {

	public static void main(String[] args) {
	System.out.println("Call removeDuplicates(String word) method ...."); 
			String[] testdata = {"aabscs", "abcd", "aaaa", null, "", "aaabbb", "abababa"}; 
			for (String input : testdata) { 
				System.out.printf("Input : %s Output: %s %n", input, removeDuplicatesFromString(input)); 
			} 
			System.out.println("Calling removeDuplicatesFromString(String str)."); 
			for (String input : testdata) { 
				System.out.printf("Input : %s Output: %s %n", input, removeDuplicatesFromString(input));
			}

		}
		
}


