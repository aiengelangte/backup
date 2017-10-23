package 装饰模式2;

public  class Person {

	private String name;

	public Person() {
		super();
	}

	public Person(String name) {
	
		this.name=name;
	}
	
	public void Show(){
		System.out.println("装扮"+name);
	};
	
}
