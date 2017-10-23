package 原型模式;

public class ConcretePrototypel extends Prototype {

	public ConcretePrototypel(String id) {
		super(id);
		// TODO Auto-generated constructor stub
	}

	//创建当前对象的浅表副本。该方法是创建一个新对象，然后将当前对象，的
	//非静态字段复制到该对象。值类型，诸位复制。引用类型，复制引用，不复制引用的对象。
	//使用的是同一对象
	@Override
	public Prototype Clone() {
		// TODO Auto-generated method stub
		return (Prototype)this.MemberwiseClone();
	}

	private Prototype MemberwiseClone() {
		// TODO Auto-generated method stub
		return null;
	}

}
