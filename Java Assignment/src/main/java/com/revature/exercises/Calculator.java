package com.revature.exercises;

public class Calculator {

	/**
	 * @author William
	 * @param a
	 * @return the factorial of a... a!
	 * 
	 *         Write an implementation that calculates the factorial of a provided
	 *         number recursively
	 */

	public static Integer factorial(int a) {

		if (a < 0) {
			throw new IllegalArgumentException("Negative");
		}
		if (a == 0) {
			
			return 1;
		} else
			return (a * factorial(a - 1));
	}

	/**
	 * @author William
	 * @param a
	 * @return the factorial of a... a!
	 * 
	 *         Write an implementation that calculates the factorial of a provided
	 *         number iteratively
	 */

	public static Integer iterativeFactorial(int a) {
		
		if (a < 0) {
			throw new IllegalArgumentException("Negative");
		}

		int i, itera = 1;
		
		for (i = 1; i <= a; i++) {
			
			itera = itera * i;

		}
		
		return itera;
	}

	/**
	 * @author William
	 * @param a
	 * @return the ath term in the Fibonacci Sequence
	 * 
	 *         Write an implementation that finds the `ath` term in the Fibonacci
	 *         Sequence, recursively. For this method, the Fibonacci sequence starts
	 *         at 1
	 */
	public static Integer termInFibonacciSequence(int a) {
		if (a < 0) {
			throw new IllegalArgumentException("Negative");
		}
		if(a==0) 
		{
			return 0;
		} 
		else if (a==1) 
		{
			return 1;
		}
		else { 
			return termInFibonacciSequence (a - 1) + termInFibonacciSequence (a - 2);
		}
	}
		

		
	

	/**
	 * @author William
	 * @param a
	 * @return the ath term in the Fibonacci Sequence
	 * 
	 *         Write an implementation that finds the `ath` term in the Fibonacci
	 *         Sequence, iteratively. For this method, the Fibonacci sequence starts
	 *         at 1
	 */
	public static Integer termInFibonacciSequenceIteratively(int a) {
		if (a < 0) {
			throw new IllegalArgumentException("Negative");
		}
		int i;
		int n1=0;
		int	n2=1;
		int n3;
		    
		     
		    
		 for(i=2; i<=a; ++i) 
		 {    
		  n3=n1+n2;        
		  n1=n2;    
		  n2=n3;    
		 }    
		  return n2;
		}
		
	/**
	 * @author William
	 * @param array
	 * @return the maximum value in the array
	 * 
	 *         Write an implementation that finds the maximum value in the provided
	 *         array
	 */

	public static Integer maxInArray(int... array) {
		if (array.length < 1) {
			return 0;
		}
		int i;
		int maxInArray = array[0];
		for (i = 1; i < array.length; i++) {
			if (array[i] > maxInArray) {
				maxInArray = array[i];
			}

		}
		return maxInArray;
		
	}

	/**
	 * @author William
	 * @param array
	 * @return the minimum value in the array
	 * 
	 *         Write an implementation that finds the minimum value in the provided
	 *         array
	 */

	public static Integer minInArray(int... array) {
		if (array.length < 1) {
			return 0;
		}
		int i;
		int minInArray = array[0];
		for (i = 1; i < array.length; i++) {
			if (array[i] < minInArray) {
				minInArray = array[i];
			}

		}
		return minInArray;

	}

	/**
	 * @author William
	 * @param array
	 * @return the sum of the elements in the array
	 * 
	 *         Write an implementation that returns the sum of all of the elements
	 *         in the provided array
	 */

	public static Integer sumOfArray(Integer... array) {
		if (array.length < 1) {
			return 0;
		}
		int i;
		int sumOfArray = array[0];
		for (i = 1; i < array.length; i++) {
			sumOfArray += array[i];
		}
		return sumOfArray;
		
	}

	/**
	 * @author William
	 * @param input
	 * @return whether the input is prime or not
	 * 
	 *         Write an implementation that determines whether the provided input is
	 *         a prime number or not
	 */

	public static Boolean isPrime(int input) {
		if (input < 0) {
			throw new IllegalArgumentException("Negative");
		}
		int i;
		for (i = 2; i < input; i++) {
			if (input % i == 0)
				return false;
		}
		return true;
	}
}
