package com.revature.exercises;

public class Palindrome {
	
	public static Boolean palindrome(String input) {
		String x = "";
		String y = "";
		x = input.replaceAll("\\W", "");
		for (int i = x.length() -1; i >= 0; i--) {
			y += x.charAt(i);
		}
		
		if (y.equals(x)) {
			System.out.println(x);
			System.out.println(y);
			System.out.println("True");
			return true;
		}
		System.out.println(x);
		System.out.println(y);
		System.out.println("False");
		return false;		
	}
	
	public static void main(String[] args) {
		palindrome("a man. a plan. a canal. panama");
	}

}
