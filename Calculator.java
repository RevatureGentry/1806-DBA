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
		int value = 1;
		if (a == 1) {
			return value;
		}
		if (a == 0) {
			return value;
		}
		if (a < 0) {
			throw new IllegalArgumentException();
		}
		value = factorial(a - 1) * a;
		return value;
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
		int value = 1;
		if (a == 1) {
			return value;
		}
		if (a == 0) {
			return value;
		}
		if (a < 0) {
			throw new IllegalArgumentException();
		}
		for (int i = 1; a > 1; a--) {
			value = value * a;
		}
		return value;
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

		if (a == 0) {
			return 0;
		}
		if (a < 0) {
			throw new IllegalArgumentException();
		}
		if (a == 1) {
			return 1;
		}
		if (a == 2) {
			return 1;
		}
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

		if (a == 0) {
			return 0;
		}
		if (a < 0) {
			throw new IllegalArgumentException();
		}
		if (a == 1) {
			return 1;
		}
		if (a == 2) {
			return 1;
		}

		int value = 0;
		int value1 = 0;
		int value2 = 1;

		for (int i = 0; i < a; i++) {
			value = value1 + value2;
			value2 = value1;
			value1 = value;
		}

		return value;
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
		int highvalue = array[0];
		for (int i = 0; i < array.length; i++) {

			if (array[i] > highvalue) {
				highvalue = array[i];
			}
		}
		return highvalue;
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
		int lowvalue = array[0];
		for (int i = 0; i < array.length; i++) {

			if (array[i] < lowvalue) {
				lowvalue = array[i];
			}
		}
		return lowvalue;

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
		int sum = 0;

		for (int i = 0; i < array.length; i++) {
			sum = array[i] + sum;
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
		if (input == 0) {
			return true;
		}
		if (input < 0) {
			throw new IllegalArgumentException();
		}

		for (int i = 2; i <= input / 2; i++) {
			if (input % i == 0) {
				return false;
			}
		}
		return true;
	}

}
