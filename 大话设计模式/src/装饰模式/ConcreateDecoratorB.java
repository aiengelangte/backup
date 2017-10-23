package 装饰模式;

public class ConcreateDecoratorB extends Decorator{

	public void Operation(){
		super.Operation();
		AddedBehavior();
		System.out.println("具体装饰对象B的操作");
	}

	private void AddedBehavior() {
		// TODO Auto-generated method stub
		
	}
}
