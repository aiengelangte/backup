package ¼ÆËãÆ÷;

public class DivOperation extends Operation {
	public double getResult() throws Exception {
		double result = 0;
		if (super.getNumber_B() == 0) {
			throw new Exception("³ıÊıÎª0");
		} else {
			result = super.getNumber_A() / super.getNumber_B();
			return result;
		}

	}
}
