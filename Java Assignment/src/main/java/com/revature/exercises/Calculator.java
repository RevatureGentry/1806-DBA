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
		if (a == 0)    
			return 1;    
		else if (a < 0)
			throw new IllegalArgumentException();
		else
		    return(a * factorial(a-1));	
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
		int number = 1;
		if (a < 0 ) {
			throw new IllegalArgumentException();
		}
		if (a == 0) {
			return 1;
		}
		for(int i = a ; i>0 ; i--){
			number*= i;
		}
		return number;
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
		if (a < 0 )
			throw new IllegalArgumentException();
		else if (a == 0) 
			return 0;
		else if (a == 1 || a ==2) 
			return 1;
		else
		    return termInFibonacciSequence(a - 1) + termInFibonacciSequence(a - 2);
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
		if (a < 0 ) {
			throw new IllegalArgumentException();}
		if (a <= 2) {
			return 1;}
		
		int fib = 1;
		int prevFib = 1;
		
		for (int i = 3; i <= a; i++) {
			int temp = fib;
			fib += prevFib;
			prevFib = temp;
		}
			return fib;
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
		if (array.length == 0) {
			return 0;
		}
		int max = array[0];
		for (int i = 1; i < array.length; i++ )
			max = Math.max(array[i], max);
		return max; 
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
		if (array.length == 0) {
			return 0;
		}
		int min = array[0];
		for (int i = 1; i < array.length; i++) {
			if (array[i] < min) {
				min = array[i];
			}
		}
		return min;
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
		if (array.length == 0) {
			return 0;
		}
		int sum = 0;
		for (int i : array) {
			sum += i;
		}
		return sum;
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
			throw new IllegalArgumentException();}
		
		int i = 0;
		int m = 0;
		
		m = input / 2;
		
		if (input == 0 | input == 1) {
			return false;
		}
		else {
			for (i = 2; i <= m; i++) {
				if (input % i == 0) {
					return false;
				}
			}
		}
		return true;
	}
}
