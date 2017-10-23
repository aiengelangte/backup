package com.tm.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;


import com.tm.pojo.User;

public interface UserService {
	public boolean login(User admin);

	public User selectByName(String name);

	public List<User> selectForCombox();

	//按id查找
	public User selectById(int id);

}
