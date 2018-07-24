package com.revature.exercises;

public class General {

	/**
	 * @author William
	 * 
	 *         FizzBuzz
	 * 
	 *         Print the numbers 1 through 100, inclusive If the number is divisible
	 *         by 3, print "Fizz" If the number is divisible by 5, print "Buzz" If
	 *         the number is divisible by both, print "FizzBuzz"
	 */
	public static void fizzBuzz() {
		for (int i = 1; i <= 100; i++) {
			if (i % 3 == 0 && i % 5 == 0)
				System.out.println("FizzBuzz");
			else if (i % 5 == 0)
				System.out.println("Buzz");
			else if (i % 3 == 0)
				System.out.println("Fizz");
			else
				System.out.println(i);
		}

	}

	/**
	 * @author William
	 * @param nthRow Pascal's Triangle
	 * 
	 *               Print up to the `nthRow` of Pascal's Triangle
	 * 
	 *               e.g. If we provide the argument 3, it should print out the
	 *               first 3 rows
	 */
	public static void printPascalsTriangle(int nthRow) {
		if (nthRow < 1) {
			throw new IllegalArgumentException("Cannot take in a negative input.");
		}
		int[] last_row;
		int[] this_row = { 1 };
		print_row(this_row);
		last_row = this_row;

		for (int i = 2; i <= nthRow; i++) {
			this_row = new int[i];
			this_row[0] = 1;
			this_row[i - 1] = 1;
			for (int j = 0; j <= i - 3; j++) {
				this_row[j + 1] = last_row[j] + last_row[j + 1];
			}
			print_row(this_row);
			last_row = this_row;
		}
	}

	public static void print_row(int[] row) {
		for (int i = 0; i < row.length; i++) {
			System.out.print(row[i] + " ");
		}
		System.out.println();
	}

	/**
	 * @author William
	 * @param toBeReversed
	 * @return the provided input, reversed
	 * 
	 *         Write an implementation that reverses and returns the provided int
	 *         argument
	 */

	public static Integer reverseNumber(int toBeReversed) {
		long result = 0;
		while (toBeReversed != 0) {
			result = result * 10 + toBeReversed % 10;
			toBeReversed = toBeReversed / 10;

		}
		return (int) result;
	}
}
