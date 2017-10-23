package 代理模式;

public class Persuit implements GiveGift{
	String mmName;
	
	public Persuit(String mmName) {
		super();
		this.mmName = mmName;
	}

	@Override
	public void GiveDolls() {
		// TODO Auto-generated method stub
		System.out.println("送"+mmName+"洋娃娃");
	}

	@Override
	public void GiveFlowers() {
		// TODO Auto-generated method stub
		System.out.println("送"+mmName+"花");
	}

	@Override
	public void GiveChocolate() {
		// TODO Auto-generated method stub
		System.out.println("送"+mmName+"巧克力");
	}

}
