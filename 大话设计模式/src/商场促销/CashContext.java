package 商场促销;

public class CashContext {
	CashSuper aCashSuper;
	//简单工厂
	public CashContext(String type) {
		super();
		switch (type) {
		case "正常收费":
			aCashSuper = new CashNormal();
			break;
		case "打八折":
			aCashSuper = new CashRebate(0.8);
		case "满300返100":
			aCashSuper = new CashReturn(300, 100);

		}
	}

	// 调用策略
	//所有这些策略完成的都是同一个工作，只是实现不同
	public double getResult(double money) {
		return aCashSuper.acceptCash(money);

	}
}
