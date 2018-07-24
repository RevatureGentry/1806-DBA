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
			throw new IllegalArgumentException("Number is negative");
		}
		if (a == 0)
			return 1;
		else
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
		int i, f = 1;

		if (a < 0) {
			throw new IllegalArgumentException("Number is negative");
		}
		for (i = 1; i <= a; i++) {
			f = f * i;
		}
		return f;
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
			throw new IllegalArgumentException("Number is negative");
		}
		if (a == 0)
			return 0;
		else if (a == 1)
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
		if (a < 0) {
			throw new IllegalArgumentException("Number is negative");
		}
		int f[] = new int[a + 2];
		f[0] = 0;
		f[1] = 1;
		if (a < 2)
			return f[a];
		else {

			for (int i = 2; i <= a; i++) {
				f[i] = f[i - 1] + f[i - 2];
			}
			return f[a];
		}
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
		int max = array[0];
		for (int i = 1; i < array.length; i++) {
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
		int sum = array[0];
		for (int i = 1; i < array.length; i++) {
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
			throw new IllegalArgumentException("Number is negative");
		}
		for (int i = 2; i < input; i++) {
			if (input % i == 0)
				return false;
		}
		return true;
	}
}
