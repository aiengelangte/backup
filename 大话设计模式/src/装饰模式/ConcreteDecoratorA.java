package װ��ģʽ;

public class ConcreteDecoratorA extends Decorator{
	private String addedState;
	
	public void Operation(){
		super.Operation(); 	 //������ԭOperation����ִ����Ĺ���
		addedState="New State";
		System.out.println("����װ�ζ���A");
	}
}
