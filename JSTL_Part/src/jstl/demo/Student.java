package jstl.demo;

public class Student
{
	private String firstName;
	private String lastName;
	
	private boolean goldCusto;

	public Student(String firstName, String lastName, boolean goldCusto) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.goldCusto = goldCusto;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public boolean isGoldCusto() {
		return goldCusto;
	}

	public void setGoldCusto(boolean goldCusto) {
		this.goldCusto = goldCusto;
	}
	
	

}
