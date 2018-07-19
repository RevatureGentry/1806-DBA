package com.revature.examples.tests;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import com.revature.examples.BadMath;
import com.revature.examples.GradeCalculator;
import com.revature.examples.StringComparison;

public class StringComparisonTest {
	
	GradeCalculator gc = new GradeCalculator();
	StringComparison sc = new StringComparison();

	@BeforeClass	// Guarantees that this method will be ran once before all test methods
	public static void setUpBeforeClass() throws Exception {
		System.out.println("(BeforeClass) This will be printed once before everything else");
	}

	@AfterClass		// Guarantees that this method will be ran once after all test methods
	public static void tearDownAfterClass() throws Exception {
		System.out.println("(AfterClass) This will be printed once after everything else");
	}

	@Before			// Guarantees that this method will be ran once before each test method
	public void setUp() throws Exception {
		System.out.println("(Before) This will be printed once before each test method");
	}

	@After			// Guarantees that this method will be ran once after each test method
	public void tearDown() throws Exception {
		System.out.println("(After) This will be printed once after each test method");
	}

	@Test			// @Test denotes that the method is a test method
	public void test() {
		assertTrue(true);
	}
	
	@Test
	public void testAverage() {
		assertTrue(gc.calculateAverage(1.0, 2.0, 3.0) == 2.0);
	}

	@Test
	public void divideFunctionalityPositiveTest() {
		assertEquals(BadMath.divide(20, 2), 10);
	}
	
	@Test(expected=ArithmeticException.class)
	public void divideFunctionalityNegativeTest() {
		BadMath.divide(15, 0);
	}
	
	@Test
	public void comparingStringReferences() {
		// == checks for Reference Equality
		assertTrue(sc.s1 == sc.s2);
		
		// s3 doesnt have reference equality with s1 and s2 because we used the String constructor
		assertFalse(sc.s1 == sc.s3);
		assertFalse(sc.s2 == sc.s3);
		
		// The following will all be true because .equals() checks for value equality
		assertTrue(sc.s1.equals(sc.s2));
		assertTrue(sc.s1.equals(sc.s3));
		assertTrue(sc.s2.equals(sc.s3));
		
		// The following will all be false because "Hello World" != "hello world" (their values)
		assertFalse(sc.s1.equals(sc.s4));
		assertFalse(sc.s2.equals(sc.s4));
		assertFalse(sc.s3.equals(sc.s4));
	}
}



