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
		for (int i =1; i<= 100; i++) {
			if ((i % 3 == 0) && (i % 5 == 0)){
				System.out.println("FizzBuzz");
			}
			else if (i % 3 == 0){
				System.out.println("Fizz");
			}
			else if (i % 5 == 0) {
				System.out.println("Buzz");
			}
			else {
				System.out.println(i);
			}
		}

	}

	/**
	 * @author William
	 * @param nthRow
	 *            Pascal's Triangle
	 * 
	 *            Print up to the `nthRow` of Pascal's Triangle
	 * 
	 *            e.g. If we provide the argument 3, it should print out the first 3
	 *            rows
	 */
	public static void printPascalsTriangle(int nthRow) {
		if (nthRow < 0) {
			throw new IllegalArgumentException();
		} 
		for(int i = 0; i < nthRow; i++) {
			int number = 1;
		for(int j = 0; j <= i; j++) {
			System.out.print(number + " ");
			number = number * (i - j) / (j + 1);
		}
		System.out.println();
		}
	}



	/**
	 * @author William
	 * @param toBeReversed
	 * @return the provided input, reversed
	 * 
	 *         Write an implementation that reverses and returns the provided int argument
	 */

	public static Integer reverseNumber(int toBeReversed) {
		int reverse = 0;
		 while(toBeReversed != 0){
		        reverse = reverse * 10 + toBeReversed % 10;
		        toBeReversed = toBeReversed/10;
		    }
		 
		return reverse;
	}
}
