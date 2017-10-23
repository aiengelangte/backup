package com.tm.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tm.IDao.UserMapper;
import com.tm.pojo.User;
import com.tm.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Resource
	private UserMapper mapper;

	@Override
	public boolean login(User admin) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public User selectByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> selectForCombox() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User selectById(int id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}

	
	
}
