package com.revature.exercises;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import org.junit.Ignore;
import org.junit.Rule;
import org.junit.Test;
import org.junit.contrib.java.lang.system.SystemOutRule;

public class DbaJavaAssessment {
	
	@Rule
	public final SystemOutRule log = new SystemOutRule();
	
	/* Factorial Unit Tests */
	
	@Test
	public void calculatorFactorialBaseFunctionality() {
		assertEquals(Calculator.factorial(0), new Integer(1));
		assertEquals(Calculator.factorial(1), new Integer(1));
		assertEquals(Calculator.iterativeFactorial(0), Calculator.factorial(0));
		assertEquals(Calculator.iterativeFactorial(1), Calculator.factorial(1));
	}
	
	@Test
	public void calculatorFactorialFunctionality() {
		assertEquals(Calculator.factorial(5), new Integer(120));
		assertEquals(Calculator.iterativeFactorial(5), Calculator.factorial(5));
		assertEquals(Calculator.factorial(12), new Integer(479001600));
		assertEquals(Calculator.iterativeFactorial(12), Calculator.factorial(12));
	}
	
	@Test(expected=IllegalArgumentException.class)
	public void calculatorFactorialFunctionalityWhenNegativeNumberProvided() {
		Calculator.factorial(-10);
	}
	
	@Test(expected=IllegalArgumentException.class)
	public void calculatorIterativeFactorialFunctionalityWhenNegativeNumberProvided() {
		Calculator.iterativeFactorial(-10);
	}
	
	/* Fibonacci Unit Tests */
	
	@Test
	public void calculatorFibonacciBaseFunctionality() {
		assertEquals(Calculator.termInFibonacciSequence(1), new Integer(1));
		assertEquals(Calculator.termInFibonacciSequence(2), new Integer(1));
		assertEquals(Calculator.termInFibonacciSequenceIteratively(1), new Integer(1));
		assertEquals(Calculator.termInFibonacciSequenceIteratively(2), new Integer(1));
	}
	
	@Test
	public void calculatorFibonacciFuncationality() {
		assertTrue(Calculator.termInFibonacciSequence(5).equals(5));
		assertTrue(Calculator.termInFibonacciSequence(13).equals(233));
		assertTrue(Calculator.termInFibonacciSequence(32).equals(2178309));
		assertTrue(Calculator.termInFibonacciSequence(12).equals(Calculator.termInFibonacciSequenceIteratively(12)));
		assertTrue(Calculator.termInFibonacciSequence(32).equals(Calculator.termInFibonacciSequenceIteratively(32)));
	}
	
	@Test(expected=IllegalArgumentException.class)
	public void calculatorFibonacciFunctionalityWhenNegativeNumberProvided() {
		Calculator.termInFibonacciSequence(-10);
	}
	
	@Test(expected=IllegalArgumentException.class)
	public void CALCULATORITERATIVEFIBONACCIFUNCTIONALITYWHENNEGATIVENUMBERPROVIDED() {
		Calculator.termInFibonacciSequenceIteratively(-10);
	}
	
	
	/* Maximum Element in Array */
	
	@Test
	public void calculatorMaximumNumberInArrayFunctionality() {
		assertEquals(Calculator.maxInArray(1, 2, 3, 4, 5), new Integer(5));
	}
	
	@Test
	public void calculatorMaximumNumberInArrayWhenNoArrayProvidedFunctionality() {
		assertEquals(Calculator.maxInArray(), new Integer(0));
	}
	
	/* Minimum Element in Array */
	
	@Test
	public void calculatorMinimumNumberInArrayFunctionality() {
		assertEquals(Calculator.minInArray(1, 2, 3, 4, 5), new Integer(1));
	}
	
	@Test
	public void calculatorMinimumNumberInArrayWhenNoArrayProvidedFunctionality() {
		assertEquals(Calculator.minInArray(), new Integer(0));
	}
	
	/* Sum of Elements in Array */
	
	@Test
	public void calculatorSumOfIntegersFunctionality() {
		assertEquals(Calculator.sumOfArray(1, 2, 3, 4, 5), new Integer(15));
	}
	
	@Test
	public void calculatorSumFunctionalityWhenNoArrayProvided() {
		assertEquals(Calculator.sumOfArray(), new Integer(0));
	}
	
	@Test
	public void calculatorIsPrimeFunctionality() {
		assertTrue(Calculator.isPrime(523));
		assertTrue(Calculator.isPrime(10007));
		assertFalse(Calculator.isPrime(900));
	}
	
	@Test(expected=IllegalArgumentException.class)
	public void calculatorIsPrimeFunctionalityNegative() {
		Calculator.isPrime(-10);
	}
	
	/* Is the String a Palindrome */
	@Test @Ignore
	public void isTheStringAPalindrome() {
		assertTrue(WorkingWithStrings.isPalindrome("racecar"));
		assertTrue(WorkingWithStrings.isPalindrome("a man. a plan. a canal. panama"));
	}
	
	@Test @Ignore
	public void isTheStringAPalindromeNegative() {
		assertFalse(WorkingWithStrings.isPalindrome("William"));
		assertFalse(WorkingWithStrings.isPalindrome(null));
	}
	
	/* WorkingWithString tests */
	
	/* Reverse a string test */
	
	@Test @Ignore
	public void reverseTheString() {
		assertEquals(WorkingWithStrings.reverse("William"), "mailliW");
		assertEquals(WorkingWithStrings.reverse("racecar"), "racecar");
		assertEquals(WorkingWithStrings.reverse("Java"), "avaJ");
	}
	
	@Test(expected=IllegalArgumentException.class) @Ignore
	public void reverseTheStringNegative() {
		WorkingWithStrings.reverse(null);
	}
	
	/* Count b's test */
	
	@Test @Ignore
	public void countBs() {
		assertEquals(WorkingWithStrings.countBs("Briefly, the bubbles began to rise"), new Integer(5));
		assertEquals(WorkingWithStrings.countBs("This statement doesn't have what you are looking for."), new Integer(0));
	}
	
	@Test @Ignore
	public void countCharacters() {
		assertEquals(WorkingWithStrings.countCharacter("JavaScript is for browser programming, Java is for server programming", 'J'), new Integer(2));
		assertEquals(WorkingWithStrings.countCharacter("JavaScript is for browser programming, Java is for server programming", 'm'), new Integer(4));
	}
	
	/* Remove Duplicates */
	
	@Test @Ignore
	public void removeDuplicateCharacters() {
		assertEquals(WorkingWithStrings.removeDuplicateCharacters("Java"), "Jav");
		assertEquals(WorkingWithStrings.removeDuplicateCharacters("William"), "Wilam");
		assertEquals(WorkingWithStrings.removeDuplicateCharacters("Continuous Integration"), "Contius egra");
	}
	
	@Test(expected=IllegalArgumentException.class) @Ignore
	public void removeDuplicateCharactersNegative() {
		WorkingWithStrings.removeDuplicateCharacters(null);
	}
	
	/* Unique Characters In String */
	
	@Test @Ignore
	public void onlyUniqueCharactersInString() {
		assertTrue(WorkingWithStrings.uniqueCharactersOnly("SQL"));
		assertTrue(WorkingWithStrings.uniqueCharactersOnly("Watson"));
		assertFalse(WorkingWithStrings.uniqueCharactersOnly("tomato"));
		assertFalse(WorkingWithStrings.uniqueCharactersOnly("William"));
	}
	
	@Test(expected=IllegalArgumentException.class) @Ignore
	public void onlyUniqueCharactersInStringNegative() {
		WorkingWithStrings.uniqueCharactersOnly(null);
	}
	
	
	/* General tests */
	
	@Test @Ignore
	public void testFizzBuzz() {
		log.clearLog();
		log.mute().enableLog();
		General.fizzBuzz(); //is not visible on the console
		assertEquals(
				"1\r\n" + 
				"2\r\n" + 
				"Fizz\r\n" + 
				"4\r\n" + 
				"Buzz\r\n" + 
				"Fizz\r\n" + 
				"7\r\n" + 
				"8\r\n" + 
				"Fizz\r\n" + 
				"Buzz\r\n" + 
				"11\r\n" + 
				"Fizz\r\n" + 
				"13\r\n" + 
				"14\r\n" + 
				"Fizz\r\n" + 
				"16\r\n" + 
				"17\r\n" + 
				"Fizz\r\n" + 
				"19\r\n" + 
				"Buzz\r\n" + 
				"Fizz\r\n" + 
				"22\r\n" + 
				"23\r\n" + 
				"Fizz\r\n" + 
				"Buzz\r\n" + 
				"26\r\n" + 
				"Fizz\r\n" + 
				"28\r\n" + 
				"29\r\n" + 
				"Fizz\r\n" + 
				"31\r\n" + 
				"32\r\n" + 
				"Fizz\r\n" + 
				"34\r\n" + 
				"Buzz\r\n" + 
				"Fizz\r\n" + 
				"37\r\n" + 
				"38\r\n" + 
				"Fizz\r\n" + 
				"Buzz\r\n" + 
				"41\r\n" + 
				"Fizz\r\n" + 
				"43\r\n" + 
				"44\r\n" + 
				"Fizz\r\n" + 
				"46\r\n" + 
				"47\r\n" + 
				"Fizz\r\n" + 
				"49\r\n" + 
				"Buzz\r\n" + 
				"Fizz\r\n" + 
				"52\r\n" + 
				"53\r\n" + 
				"Fizz\r\n" + 
				"Buzz\r\n" + 
				"56\r\n" + 
				"Fizz\r\n" + 
				"58\r\n" + 
				"59\r\n" + 
				"Fizz\r\n" + 
				"61\r\n" + 
				"62\r\n" + 
				"Fizz\r\n" + 
				"64\r\n" + 
				"Buzz\r\n" + 
				"Fizz\r\n" + 
				"67\r\n" + 
				"68\r\n" + 
				"Fizz\r\n" + 
				"Buzz\r\n" + 
				"71\r\n" + 
				"Fizz\r\n" + 
				"73\r\n" + 
				"74\r\n" + 
				"Fizz\r\n" + 
				"76\r\n" + 
				"77\r\n" + 
				"Fizz\r\n" + 
				"79\r\n" + 
				"Buzz\r\n" + 
				"Fizz\r\n" + 
				"82\r\n" + 
				"83\r\n" + 
				"Fizz\r\n" + 
				"Buzz\r\n" + 
				"86\r\n" + 
				"Fizz\r\n" + 
				"88\r\n" + 
				"89\r\n" + 
				"Fizz\r\n" + 
				"91\r\n" + 
				"92\r\n" + 
				"Fizz\r\n" + 
				"94\r\n" + 
				"Buzz\r\n" + 
				"Fizz\r\n" + 
				"97\r\n" + 
				"98\r\n" + 
				"Fizz\r\n" + 
				"Buzz\r\n", log.getLog());
	}
	
	@Test @Ignore
	public void printFirstTwelveRowsOfPascalsTriangle() {
		log.clearLog();
		log.mute().enableLog();
		General.printPascalsTriangle(12);
		assertEquals(
				"1 \r\n" + 
				"1 1 \r\n" + 
				"1 2 1 \r\n" + 
				"1 3 3 1 \r\n" + 
				"1 4 6 4 1 \r\n" + 
				"1 5 10 10 5 1 \r\n" + 
				"1 6 15 20 15 6 1 \r\n" + 
				"1 7 21 35 35 21 7 1 \r\n" + 
				"1 8 28 56 70 56 28 8 1 \r\n" + 
				"1 9 36 84 126 126 84 36 9 1 \r\n" + 
				"1 10 45 120 210 252 210 120 45 10 1 \r\n" + 
				"1 11 55 165 330 462 462 330 165 55 11 1 \r\n", log.getLog());
	}
	
	@Test(expected=IllegalArgumentException.class) @Ignore
	public void pascalsTriangleWithNegativeNumberSupplied() {
		General.printPascalsTriangle(-10);
	}
	
	/* Reverse a number test */
	@Test @Ignore
	public void reverseTheNumber() {
		assertEquals(General.reverseNumber(1234), new Integer(4321));
		assertEquals(General.reverseNumber(8675309), new Integer(9035768));
	}
}
