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
		int n = 100;
		for (int i = 1; i <= n; i++) {
			if (i % 15 == 0) {
				System.out.println("FizzBuzz");
			}
			else if (i % 5 == 0) {
				System.out.println("Buzz");
			}
			else if (i % 3 == 0) {
				System.out.println("Fizz");
			} else {
				System.out.println(i);
			}
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
		if (nthRow < 0)
			throw new IllegalArgumentException();
		for (int i = 0; i<nthRow; i++) {
			for (int j = 0; j<=i; j++) {
				System.out.print(Calculator.factorial(i)/(Calculator.factorial(j) * (Calculator.factorial(i-j))) + " ");
			}System.out.println();
		}
		
		
		
		
		
		
//		System.out.println("1 \r\n" + 
//				"1 1 \r\n" + 
//				"1 2 1 \r\n" + 
//				"1 3 3 1 \r\n" + 
//				"1 4 6 4 1 \r\n" + 
////				"1 5 10 10 5 1 \r\n" + 
//				"1 6 15 20 15 6 1 \r\n" + 
//				"1 7 21 35 35 21 7 1 \r\n" + 
//				"1 8 28 56 70 56 28 8 1 \r\n" + 
//				"1 9 36 84 126 126 84 36 9 1 \r\n" + 
//				"1 10 45 120 210 252 210 120 45 10 1 \r\n" + 
//				"1 11 55 165 330 462 462 330 165 55 11 1 \r\n");
//				
		
		

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
		long reversenum = 0;
		long input = toBeReversed;
		
		while(input != 0) {
			reversenum = reversenum * 10 + input % 10;
			input = input/10;
		}
		return (int) reversenum;
	}
}
