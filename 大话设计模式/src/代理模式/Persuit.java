package ����ģʽ;

public class Persuit implements GiveGift{
	String mmName;
	
	public Persuit(String mmName) {
		super();
		this.mmName = mmName;
	}

	@Override
	public void GiveDolls() {
		// TODO Auto-generated method stub
		System.out.println("��"+mmName+"������");
	}

	@Override
	public void GiveFlowers() {
		// TODO Auto-generated method stub
		System.out.println("��"+mmName+"��");
	}

	@Override
	public void GiveChocolate() {
		// TODO Auto-generated method stub
		System.out.println("��"+mmName+"�ɿ���");
	}

}
