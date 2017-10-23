package com.tm.pojo;

import org.springframework.stereotype.Repository;

@Repository
public class Address {

	private Integer id;

	private String name;

	private Integer pid;

	private Integer value;

	public Address() {
		super();
	}

	public Address(String name, Integer value) {
		super();
		this.name = name;
		this.value = value;
	}

	public Address(Integer id, String name, Integer pid, Integer value) {
		super();
		this.id = id;
		this.name = name;
		this.pid = pid;
		this.value = value;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name == null ? null : name.trim();
	}

	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public Integer getValue() {
		return value;
	}

	public void setValue(Integer value) {
		this.value = value;
	}

}