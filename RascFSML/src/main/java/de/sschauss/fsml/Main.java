package de.sschauss.fsml;

public class Main {
	public static void main(String[] args) {
		Stepper stepper = new Stepper(new Handler());
		stepper.step(Input.ticket);
		stepper.step(Input.pass);
		stepper.step(Input.ticket);
		stepper.step(Input.pass);
		stepper.step(Input.pass);
		stepper.step(Input.mute);
		stepper.step(Input.release);
	}
}
