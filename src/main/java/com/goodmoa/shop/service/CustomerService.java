package com.goodmoa.shop.service;

import java.util.HashMap;

import com.goodmoa.shop.CustomerDto;

public interface CustomerService {

	int register(CustomerDto dto) throws Exception;
	
	CustomerDto login(HashMap<String, String> map) throws Exception;

}