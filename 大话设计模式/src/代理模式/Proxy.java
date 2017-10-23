package 代理模式;

public class Proxy implements GiveGift{
	
    Persuit aPersuit;
	public Proxy(String mmName) {
		super();
		aPersuit=new Persuit(mmName);
	}
	
	@Override
	public void GiveDolls() {
		// TODO Auto-generated method stub
		System.out.println("代理");
		aPersuit.GiveDolls();
	}

	@Override
	public void GiveFlowers() {
		// TODO Auto-generated method stub
		System.out.println("代理");
		aPersuit.GiveFlowers();
	}

	@Override
	public void GiveChocolate() {
		// TODO Auto-generated method stub
		System.out.println("代理");
		aPersuit.GiveChocolate();
	}

}
