package ÉÌ³¡´ÙÏú;

public class CashReturn extends CashSuper {

	private double moneyCondition;
	private double moneyReturn;

	public CashReturn(double moneyCondition, double moneyReturn) {
		super();
		this.moneyCondition = moneyCondition;
		this.moneyReturn = moneyReturn;
	}

	@Override
	public double acceptCash(double money) {
		// TODO Auto-generated method stub
		double result = money;
		if (money >= moneyCondition)
			result = money - Math.floor(money / moneyCondition) * moneyReturn;
		return result;
	}

}
