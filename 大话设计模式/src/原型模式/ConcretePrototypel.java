package ԭ��ģʽ;

public class ConcretePrototypel extends Prototype {

	public ConcretePrototypel(String id) {
		super(id);
		// TODO Auto-generated constructor stub
	}

	//������ǰ�����ǳ�������÷����Ǵ���һ���¶���Ȼ�󽫵�ǰ���󣬵�
	//�Ǿ�̬�ֶθ��Ƶ��ö���ֵ���ͣ���λ���ơ��������ͣ��������ã����������õĶ���
	//ʹ�õ���ͬһ����
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
