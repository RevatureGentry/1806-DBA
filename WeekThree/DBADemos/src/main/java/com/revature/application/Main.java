package com.revature.application;

// 
import com.revature.examples.*;

public class Main {

	public static void main(String[] args) {
//		VariableScopes vs1 = new VariableScopes("First instance created");
//		System.out.println(vs1.getMyInstanceVariable());
//		VariableScopes vs2 = new VariableScopes("This is gonna be different than vs1");
//		System.out.println(vs2.getMyInstanceVariable());
//		
//		System.out.println(vs1.myClassVariable);
//		System.out.println(vs2.myClassVariable);
//		
//		VariableScopes vs3 = new VariableScopes();
//		System.out.println(vs3.getMyInstanceVariable());
		
		GradeCalculator gc = new GradeCalculator();
		System.out.println("The average grade is " + gc.calculateAverage(70.0, 88.5, 92.47, 100.00, 77.5));
		
	}
}
