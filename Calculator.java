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

			throw new IllegalArgumentException("illegal");
		}
		if (a == 0) {
			return 1;
		} else {
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
			throw new IllegalArgumentException("illegal");
		}

		int num = 1;
		for (int i = 1; i <= a; i++) {
			num = num * i;
		}
		return num;
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
			throw new IllegalArgumentException("illegal");
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
			throw new IllegalArgumentException("illegal");
		}

	
		int b = 0;
		int c = 1;
		int nextNumber = 1;
		for (int i = 2 ; i <= a; i++) {
			nextNumber = c + b;
			b = c;
			c = nextNumber;
		
		}
		return nextNumber;
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
	   throw new IllegalArgumentException("illegal");
   }
            for(int i=2 ; i<input; i++){
            	if (input%i==0) {
                  return false;
            	}
            }  
            return true;  
			}}
