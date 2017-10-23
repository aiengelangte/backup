package com.tm.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tm.IDao.AddressMapper;
import com.tm.pojo.Address;
import com.tm.service.AddressService;
@Service
public class AddressServiceImpl implements AddressService{
	@Resource
	private AddressMapper mapper;

	@Override
	public List<Address> findListName() {
		// TODO Auto-generated method stub
		List<Address> aList =new ArrayList<Address>();
		aList=mapper.findNameAll();
		return aList;
	}
}
