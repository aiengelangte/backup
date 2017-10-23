package 原型模式;

public class Main {
	public static void main(String[] args) {
		ConcretePrototypel p1 = new ConcretePrototypel("id");
		ConcretePrototypel c1 =(ConcretePrototypel)p1.Clone();
		System.out.println(c1.getId());
	
	}
}
