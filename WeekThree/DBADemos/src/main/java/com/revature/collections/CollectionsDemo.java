package com.revature.collections;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

public class CollectionsDemo {

	public static void main(String[] args) {
		// Generics are used to enforce compile time safety
		List<String> languages = new ArrayList<>();
		languages.add("Java");
		languages.add("Spanish");
		languages.add("HTML");
		languages.add("SQL");
		languages.add("5");
		languages.add("William");
		languages.add(2, "XML");
//		for (int i = 0; i < languages.size(); i++) {
//			System.out.println(i + " => " + languages.get(i));
//		}
		
		List<String> copiedLanguages = new ArrayList<>(languages);
		
		
		
		List<Double> grades = new ArrayList<>();
		grades.add(34.0);
		
		List<Character> alphabet = new ArrayList<>();
		for (char a = 'A'; a <= 'z'; a++) {
			alphabet.add(a);
		}
		
//		for (Character c : alphabet) {
//			System.out.println(c);
//		}
		
		List<Employee> employees = new ArrayList<>();
		employees.add(new Employee("Jimmy", 85000.0));
		employees.add(new Employee("Jimbo", 45000.0));
		employees.add(new Employee("Karen", 60000.0));
		employees.add(new Employee("Intern", 25000.0));
		System.out.println("Before Sorting-----------------------------");
//		for (Employee e : employees) {
//			System.out.println(e);
//		}
		
		// Actually sorts the List<Employee>
//		Collections.sort(employees);
//		System.out.println("After Sorting------------------------------");
//		for (Employee e : employees) {
//			System.out.println(e);
//		}
		
		Set<Quarterback> qbs = new HashSet<>();
		qbs.add(new Quarterback("Deshaun Watson", 1));
		qbs.add(new Quarterback("Aaron Rodgers", 2));
		qbs.add(new Quarterback("Tom Brady", 3));
		qbs.add(new Quarterback("Tom Brady", 3));
		qbs.add(new Quarterback("Tom Brady", 3));
		qbs.add(new Quarterback("Tom Brady", 3));
		qbs.add(new Quarterback("Matt Ryan", 4));
		qbs.add(new Quarterback("Peyton Manning", 5));
		
//		for (Quarterback q : qbs) {
//			System.out.println(q);
//		}
		
		Set<Quarterback> sortedQbs = new TreeSet<>();
		sortedQbs.add(new Quarterback("Deshaun Watson", 1));
		sortedQbs.add(new Quarterback("Aaron Rodgers", 2));
		sortedQbs.add(new Quarterback("Tom Brady", 3));
		sortedQbs.add(new Quarterback("Tom Brady", 3));
		sortedQbs.add(new Quarterback("Tom Brady", 3));
		sortedQbs.add(new Quarterback("Tom Brady", 3));
		sortedQbs.add(new Quarterback("Matt Ryan", 4));
		sortedQbs.add(new Quarterback("Peyton Manning", 5));
		
		for (Quarterback q : sortedQbs) 
			System.out.println(q);
	}
}








