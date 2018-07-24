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
		
        	for (int i=1; i<=n; i++){
        		if (i%15==0)                                   
                		System.out.print("FizzBuzz" + "\r\n");
        		else if (i%5==0)
                		System.out.print("Buzz" + "\r\n");
            		else if (i%3==0)     
                		System.out.print("Fizz" + "\r\n");
            		else 
                		System.out.print(i+"\r\n");
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
		if (nthRow < 0)
			throw new IllegalArgumentException();
		
		int rows = nthRow;

	    	for(int i =0;i<rows;i++) {
	       		int number = 1;
	        	System.out.format("%"+(rows-i)*2+"s","");
	        	for(int j=0;j<=i;j++) {
	             		System.out.format("%4d",number);
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
		long reversedNum = 0;
		long input_long = toBeReversed;

	    	while (input_long != 0) {
	        	reversedNum = reversedNum * 10 + input_long % 10;
	        	input_long = input_long / 10;
	    	}

	    	if (reversedNum > Integer.MAX_VALUE || reversedNum < Integer.MIN_VALUE) {
	        	throw new IllegalArgumentException();
	    	}
	    	return (int) reversedNum;
	}
}
