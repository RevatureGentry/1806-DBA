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

		if (a < 0)
			throw new IllegalArgumentException();
		else if (a <= 1) {
			return 1;
		}
		else {
			return a * factorial(a - 1);
		}
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
		else if (a >= 0) {
			int x = 1;
			int i = 1;
			while (i<=a) {
				x = x * i;
				i++;
			}
			return x;
		}
		else
			return null;
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
		
		if (a < 0) {
			throw new IllegalArgumentException();
		}
		int x = 0;
		int y = 1;
		int z;
		if (a == 0)
			return 1;
		for (int i = 2; i <= a; i++) {
			z = x + y;
			x = y;
			y = z;
		}
		return y;
		
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
		int maxV = array[0];
		for (int i = 0; i < array.length; i++) {
			if (array[i] > maxV) {
				maxV = array[i];
			}
		}
		return maxV;
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
		int minV = array[0];
		for (int i = 0; i < array.length; i++) {
			if (array[i] < minV) {
				minV = array[i];
			}
		}
		return minV;
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
		for (int i = 0; i < array.length; i++) {
			sum += array[i];
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
		else if (input % 2 > 0) {
			return true;
		}
		else {
			return false;
		}
	}
}
