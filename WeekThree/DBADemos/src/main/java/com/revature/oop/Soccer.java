package com.revature.oop;

public class Soccer implements Playable, Sport {
	public void play() {
		System.out.println("I'm playing soccer!!!");
	}
	
	public static void main(String[] args) {
		Soccer s1 = new Soccer();
		Playable s2 = new Soccer();
		Sport s3 = new Soccer();
		
		s1.play();
		s2.play();
		s3.play();
	}
}
