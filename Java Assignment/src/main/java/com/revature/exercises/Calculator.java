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
			throw new IllegalArgumentException();
		}
		if (a == 0) {
			return 1;
		}
		return (a * factorial(a-1));
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
		int factorial = 1; 
		if (a < 0) {
			throw new IllegalArgumentException();
		}
		for (int i = 1; i <= a; i++) {
			factorial = factorial * i;
		}
		return factorial;
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
			throw new IllegalArgumentException();
		}
		switch(a) {
		case 0: return 0;  
		case 1: return 1; 
		default: return termInFibonacciSequence(a - 1) + termInFibonacciSequence(a - 2);
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
			throw new IllegalArgumentException();
		}
		if ((a <= 2) && (a >= 0)) {
			return 1;
		}
		int x;
		int x1 = 1;
		int x2 = 1;
		for (int i = 0; i < a - 2; i++) {
			x = x2 + x1;
			a = x;
		}
		return a;
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
		int max = 0;
		for (int i = 0; i < array.length; i++) {
			if (array[i] > max) {
				max = array[i];
			}
		}
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
		if (array.length < 1) {
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
		if (array.length < 1) {
			return 0;
		}
		int sum = 0;
		for(int i = 0; i < array.length; i++) {
			sum = sum + array[i];
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
			throw new IllegalArgumentException();
		}
		 if (input == 1) {
		        return false;
		    } else if (input == 2 || input == 3) {
		        return true;
		    } else if (input > 2) {
		        if(input % 2 == 0 || input % 3 == 0) {
		            return false;
		        }
		    }
		    return true;
	}
}
