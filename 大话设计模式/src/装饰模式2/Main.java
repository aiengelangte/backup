package װ��ģʽ2;

public class Main {

	//װ��ģʽ�����̳�ͬһ��ͬһ����
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Person aPerson =new Person("����");
		BigTrouse aBigTrouse =new BigTrouse();
		TShirts aShirts =new TShirts();
		
		aBigTrouse.DeCorate(aPerson);
		aShirts.DeCorate(aBigTrouse);
		aShirts.Show();
		
		System.out.println("----------");
		//�ڶ��ִ��
		LingDai aDai =new LingDai();
		SmallTrouse aSmallTrouse = new SmallTrouse();
		aDai.DeCorate(aPerson);	
		aSmallTrouse.DeCorate(aDai);
		aSmallTrouse.Show();
	}

}
