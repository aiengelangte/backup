package ¼ÆËãÆ÷;

public class User {

	public String sex;
	private String name;
	private int age;
	
	
	
	public User(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}

	public User() {
		super();
	}
	public void sayHello(String name){
		System.out.println("hello"+name);
	}
	public void sayHello2(String name,int age){
		System.out.println("hello"+name);
		System.out.println("age"+ age);
	}
	
	private String name2() {
		return name+"private2";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	
}
