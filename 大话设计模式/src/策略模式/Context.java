package 策略模式;

public class Context {
	Strategy aStrategy;

	public Context(Strategy aStrategy) {
		super();
		this.aStrategy=aStrategy;
	}
	
	//上下文接口
	public void ContextInterface(){
		aStrategy.AlgorithmInterface();
	}
}
