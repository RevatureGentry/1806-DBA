package com.revature.examples;

import java.util.InputMismatchException;
import java.util.Scanner;

public class BadMath {
	
	public static void askTheUserForInput() {
		Scanner sc = new Scanner(System.in);
		boolean hasErrors = true;
		do {
			try {
				System.out.println("Enter a number");
				int firstNum = sc.nextInt();
				System.out.println("Enter another number");
				int secondNum = sc.nextInt();
				// This next line is the risky code 
				int quotient = BadMath.divide(firstNum, secondNum);
				System.out.println(firstNum + " / " + secondNum + " = " + quotient);
				hasErrors = false;
			} catch (ArithmeticException ae) {
				System.out.println("Second number cannot be 0!");
				sc.next();
			} catch (InputMismatchException ime) {
				System.out.println("Your input must be an int!");
				sc.next();
			}
		} while (hasErrors);
		sc.close();
	}

	public static int divide(int a, int b) {
		return a / b;
	}
	
	public static void main(String... args) {
		askTheUserForInput();
	}
}
