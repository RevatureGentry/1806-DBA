package com.revature.examples;


/*
 * Reverse domain notation
 * 
 * Suppose we are working on code for amazon.video-games.com
 * 
 * The package we would work in would be com.video-games.amazon
 * 
 * 
 * Fully qualified class name
 * 
 * the.name.of.the.package.ClassName
 * 
 * For Example: The fully qualified class name of VariableScopes is
 * 		com.revature.examples.VariableScopes
 * 
 * 
 */

public class VariableScopes {

	public static String myClassVariable = "This value is accessible by any instance of this class";
	private String myInstanceVariable = "Hello world";
	
	public VariableScopes() {
		
	}
	
	public VariableScopes(String myInstanceVariable) {
		this.myInstanceVariable = myInstanceVariable;
	}
	
	public String getMyInstanceVariable() {
		return this.myInstanceVariable;
	}
	
	public void setMyInstanceVariable(String s) {
		if (s != null) {
			this.myInstanceVariable = s;
		}
	}
}
