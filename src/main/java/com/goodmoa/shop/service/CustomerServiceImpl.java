package com.goodmoa.shop.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goodmoa.shop.CustomerDto;
import com.goodmoa.shop.dao.CustomerDao;

@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	CustomerDao dao;
	
	@Override
	public int register(CustomerDto dto) throws Exception {
		return dao.join(dto);
	}
	
	@Override
	public CustomerDto login(HashMap<String, String> map) throws Exception {
		return dao.login(map);
	}
	
	
}
