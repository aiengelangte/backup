package �̳�����;

public class CashContext {
	CashSuper aCashSuper;
	//�򵥹���
	public CashContext(String type) {
		super();
		switch (type) {
		case "�����շ�":
			aCashSuper = new CashNormal();
			break;
		case "�����":
			aCashSuper = new CashRebate(0.8);
		case "��300��100":
			aCashSuper = new CashReturn(300, 100);

		}
	}

	// ���ò���
	//������Щ������ɵĶ���ͬһ��������ֻ��ʵ�ֲ�ͬ
	public double getResult(double money) {
		return aCashSuper.acceptCash(money);

	}
}
