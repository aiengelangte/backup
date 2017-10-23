package ¼ÆËãÆ÷;

public class SubOperation extends Operation {
	public double getResult() {
		double result = 0;
		result = super.getNumber_A() - super.getNumber_B();
		return result;
	}
}
