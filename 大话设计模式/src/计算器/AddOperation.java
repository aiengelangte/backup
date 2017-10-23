package ¼ÆËãÆ÷;

public class AddOperation extends Operation {

	public double getResult() {
		double result = 0;
		result = super.getNumber_A() + super.getNumber_B();
		return result;
	}
}
