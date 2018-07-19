package com.revature.examples.tests;

import static org.junit.Assert.*;

import org.junit.Test;

import com.revature.oop.Parent;

public class EqualityTests {

	Parent p1 = new Parent("John Smith");
	Parent p2 = new Parent("John Smith");
	
	@Test
	public void testEqualsMethodForName() {
		assertTrue(p1.getName().equals(p2.getName()));
	}
	
	@Test
	public void testDoubleEqualsForName() {
		assertTrue(p1.getName() == p2.getName());
	}
	
	@Test
	public void testEqualsMethodForToString() {
		assertTrue(p1.toString().equals(p2.toString()));
	}
	
	@Test
	public void testDoubleEqualsForToString() {
		assertFalse(p1.toString() == p2.toString());
	}
	
	@Test
	public void testEqualityBetweenParentObjects() {
		assertTrue(p1.equals(p2));
	}

}
