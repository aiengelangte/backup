package ����ģʽ;

public class Context {
	Strategy aStrategy;

	public Context(Strategy aStrategy) {
		super();
		this.aStrategy=aStrategy;
	}
	
	//�����Ľӿ�
	public void ContextInterface(){
		aStrategy.AlgorithmInterface();
	}
}
