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

	public static Integer factorial(int n) {
		int result;

		if (n < 0) {
			throw new IllegalArgumentException();

		}
		if (n == 1) {
			return 1;
		}
		if (n == 0) {
			return 1;
		}
		result = factorial(n - 1) * n;
		return result;

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
			throw new IllegalArgumentException();

		}
		if (a == 1) {
			return 1;
		}
		if (a == 0) {
			return 1;
		}

		int x = 1;
		for (int i = 1; i <= a; i++)
			x = x * i;

		return x;
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
		if (a == 0)
			return 0;
		if (a <= 2)
			return 1;
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

		int f1 = 1; // declaring that the first 2 values in the sequence are 1
		int f2 = 1;
		if (a < 0)
			throw new IllegalArgumentException();
		if (a == 0)
			return 1;
		for (int i = 3; i <= a; i++) {
			int f2a = f1;
			f1 = f1 + f2;
			f2 = f2a;

		}

		return f1;
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
		if (array.length == 0)
			return 0;

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
		if (array.length == 0)
			return 0;

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

		if (array.length == 0)
			return 0;

		int first = array[0];

		for (int i = 1; i < array.length; i++) {

			first = first + array[i];

		}
		return first;

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
		if(input < 0) throw new IllegalArgumentException();
		for(int i = 3; i<input; i++) {
				if(input%i==0)
				{
					
					return false;
				}
		}
	
			 return true;
			
		
		
		
	}
}
