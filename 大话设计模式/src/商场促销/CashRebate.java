package ÉÌ³¡´ÙÏú;

public class CashRebate extends CashSuper {

	private double moneyRebate =1d;
	
	public CashRebate(double d) {
		// TODO Auto-generated constructor stub
		this.moneyRebate=d;
	}


	@Override
	public double acceptCash(double money) {
		// TODO Auto-generated method stub
		return money*moneyRebate;
	}

}
