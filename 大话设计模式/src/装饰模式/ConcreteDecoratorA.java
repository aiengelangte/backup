package 装饰模式;

public class ConcreteDecoratorA extends Decorator{
	private String addedState;
	
	public void Operation(){
		super.Operation(); 	 //先运行原Operation，再执本类的功能
		addedState="New State";
		System.out.println("具体装饰对象A");
	}
}
