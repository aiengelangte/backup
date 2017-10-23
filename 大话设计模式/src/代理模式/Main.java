package 代理模式;

public class Main {
	public static void main(String[] args) {
		Proxy aProxy =new Proxy("晓晓");
		aProxy.GiveFlowers();
		aProxy.GiveDolls();
		aProxy.GiveChocolate();
	}
}
