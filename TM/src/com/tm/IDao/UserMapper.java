package com.tm.IDao;

import com.tm.pojo.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer adminId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer adminId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

	boolean login(User user);
}