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

	public static Integer factorial(int a) throws IllegalArgumentException {
		if (a < 0) {
			throw new IllegalArgumentException();
		} else if (a < 2) {
			return 1;
		}
		return a * factorial(a - 1);
	}

	/**
	 * @author William
	 * @param a
	 * @return the factorial of a... a!
	 * 
	 *         Write an implementation that calculates the factorial of a provided
	 *         number iteratively
	 */

	public static Integer iterativeFactorial(int a) throws IllegalArgumentException {
		if (a < 0) {
			throw new IllegalArgumentException();
		}
		int prod = 1;
		for (int i = a; i > 1; i--) {
			prod *= i;
		}
		return prod;
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
		} else if (a == 0) {
			return 0;
		} else if (a <= 2) {
			return 1;
		} else {
			return termInFibonacciSequence(a - 1) + termInFibonacciSequence(a - 2);
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

		int prev = 0;
		int curr = 1;
		int result = 1;
		for (int i = 2; i <= a; i++) {
			result = prev + curr;
			prev = curr;
			curr = result;
		}

		return result;
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
		int max = 0;
		for (int e : array) {
			if (e > max) {
				max = e;
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
		int min = 0;

		if (array.length == 0) {
			return 0;
		}

		min = array[0];
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
		
		int sum = 0;
		for (int x : array) {
			sum += x;
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
		} else if (input <= 1) {
			return false;
		}
		for (int i = 2; i < input; i++) {
			if(input % i == 0) {
				return false;
			}
		}
		
		return true;
	}
}
