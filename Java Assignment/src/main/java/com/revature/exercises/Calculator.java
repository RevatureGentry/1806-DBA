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
		} else if (a <= 1)
			return 1;
		else
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

	public static Integer iterativeFactorial(int a) {
//int counter =1;
//while ( counter >= 1 ) {
//	a=counter * a;
//	counter--;
//}
//		return null;
		if (a < 0) {
			throw new IllegalArgumentException();
		} else if (a <= 1)
			return 1;
		else {
			int n = 1;

			for (int i = a; i > 1; i--)
				n *= i;
			return n;
		}
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
		} else if (a <= 2)
			return 1;
		else {
			return termInFibonacciSequence(a - 2) + termInFibonacciSequence(a - 1);
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
		int i = 2;
		int x = 0;
		if (a < 0) {
			throw new IllegalArgumentException();
		} else if (a <= 2)
			return 1;
		else
			do {
				x += termInFibonacciSequenceIteratively(a - i);
				i--;
			} while (i > 0);
		return x;
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
		int x = 0;
		for (int i : array) {
			if (i > x) {
				x = i;
			}
		}
		return x;
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
		int x = 0;
		if (array .length ==0) {
			return 0; }
		x = array[0];
		for (int i : array) {
			if (i < x) {
				x = i;
			}
		}
		return x;}
	

	/**
	 * @author William
	 * @param array
	 * @return the sum of the elements in the array
	 * 
	 *         Write an implementation that returns the sum of all of the elements
	 *         in the provided array
	 */

	public static Integer sumOfArray(Integer... array) {

		int x = 0;
		for (int i : array) {
			x += i;
		}

		return x;
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
		// for loop subtracting input by one with a if loop to see if input is divisible
		// by i--
int i;
		if (input<0) {throw new IllegalArgumentException();}
		else for (i = 2; i <0; i++); 
		{if (input % i == 0) { return false;}
				}
		return true;}
}

