package ¼ÆËãÆ÷;

public class OperationFactory {
	
	public static Operation createOperation(String operate) {
		Operation aOperation = null;
		switch (operate) {
		case "+":
			aOperation = new AddOperation();
			break;
		case "-":
			aOperation = new SubOperation();
			break;
		case "*":
			aOperation = new MultiOperation();
			break;
		case "/":
			aOperation = new DivOperation();
			break;
		}

		return aOperation;
	}
}
