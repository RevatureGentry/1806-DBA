package com.revature.examples;

public class GradeCalculator {

	double[] fixedGrades = new double[11];
	
	public double calculateAverage() {
		double sum = 0.0;
		
		// Populate our fixed size array with random numbers
		for (int i = 0; i < fixedGrades.length; i++) {
			fixedGrades[i] = (Math.random() * 100);
		}
		
		// Iterate and add each element to our `sum` variable
		for (int i = 0; i < fixedGrades.length; i++) {
			sum += fixedGrades[i];		// The exact same as `sum = sum + fixedGrades[i]`
		}
		
		return (sum / fixedGrades.length);
	}
	
	
	public double calculateAverage(double...grades) {
		System.out.println("Number of elements in the array: " + grades.length);
		
		// Holder variable
		double sum = 0;
		
		// Loop through our array, add each element to the `sum` variable
		for (int i = 0; i < grades.length; i++) {
			sum += grades[i];
		}
		
		// Divide the sum by the count to find the average
		return (sum / grades.length);
	}
}
