package com.revature.exercises;

public class UniqueString {
	
public static String removeDuplicateCharacters(String input) {
		
		if (input == null) {
			throw new IllegalArgumentException();
		}
		else {
//			String uniqueString = "";
			for (int i = 0; i < input.length(); i++) {
//				if (!uniqueString.toLowerCase().contains(String.valueOf(input.charAt(i)).toLowerCase())) {
//					uniqueString += input.charAt(i);
//				}
				newString(input.charAt(i));
			}
		}
		return null;
	}

public static String newString(char a) {
	String uniqueString ="";
	for (int i = 0; i < 4; i ++) {
		uniqueString += a;
	}
	System.out.println(uniqueString);
	return uniqueString;
}


public static void main (String[] args) {
	removeDuplicateCharacters("Java");
}
}
