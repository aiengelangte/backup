package ¼ÆËãÆ÷;

public class Main {
	public static void main(String[] args) throws Exception {

		Operation aOperation = OperationFactory.createOperation("+");
		aOperation.setNumber_A(15);
		aOperation.setNumber_B(25);
		System.out.println(aOperation.getResult());
	}
}
