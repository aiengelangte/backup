package 装饰模式2;

public class Main {

	//装饰模式，都继承同一个同一个类
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Person aPerson =new Person("张三");
		BigTrouse aBigTrouse =new BigTrouse();
		TShirts aShirts =new TShirts();
		
		aBigTrouse.DeCorate(aPerson);
		aShirts.DeCorate(aBigTrouse);
		aShirts.Show();
		
		System.out.println("----------");
		//第二种打扮
		LingDai aDai =new LingDai();
		SmallTrouse aSmallTrouse = new SmallTrouse();
		aDai.DeCorate(aPerson);	
		aSmallTrouse.DeCorate(aDai);
		aSmallTrouse.Show();
	}

}
