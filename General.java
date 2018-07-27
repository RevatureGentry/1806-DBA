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
	public static void  fizzBuzz(String[] arge) {
		
		
		for (int i = 1; i <= 100; i++)
		         {if (i % 15 == 0){						        
		        	 				System.out.println("FizzBuzz");
		         				  }
		         else if (i % 5 == 0) {
		        	 				System.out.println("Buzz");
				                      }
		         else if (i%3 == 0)  {
			     System.out.println("Fizz");
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
			throw new IllegalArgumentException("illegal");
						}
		int r = 0, x,  num, i = 1, y ;
		 for (i=0;i< r;i++) {
			for(x=r; x >i; x --)
			{
				System.out.print(" ");
			}
            num = 1;
			for(y=0;y<=i;y++)
			{
				 System.out.print(num+ " ");
				 num = num * (i - y) / ( y+ 1);
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
		if (toBeReversed == 0) {
			throw new IllegalArgumentException("illegal");
		}
		int rev = 0;
		while (toBeReversed != 0 )
		{
			rev = rev *10;
			rev = rev + toBeReversed%10;
			toBeReversed = toBeReversed/ 10;
			
		}     
		return rev;
		}
		}
