package com.tm.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tm.pojo.Address;
import com.tm.pojo.TD;
import com.tm.service.AddressService;
import com.tm.utils.ReadTxt;


@Controller
@RequestMapping("/adress.action")
public class AddressController {
	@Resource
	private AddressService service;
	
	@RequestMapping(params ="method=json")
	@ResponseBody
	public List<Address> getJson(){
		Address address =new Address("上海",15);
		Address bddress =new Address("杭州",17);
		Address cddress =new Address("东营",18);	
		Address dddress =new Address("廊坊",20);
		Address eddress =new Address("常德",30);
		List<Address> aList =new ArrayList<Address>();
		aList.add(eddress);
		aList.add(address);
		aList.add(bddress);
		aList.add(cddress);
		aList.add(dddress);
		
		return aList;
	}
	
	@RequestMapping(params ="method=json2")
	@ResponseBody
	public List<Address> getTmData(){
		List<Address> aListAddresses  =new ArrayList<Address>();
		List<TD> aListTD =new ArrayList<TD>();
		String path="E://TMdata//";
		for (Address ad : aListAddresses) {
			
		}
		aListTD =ReadTxt.read(path+, aListTD);
		return null;
	}
	
}
