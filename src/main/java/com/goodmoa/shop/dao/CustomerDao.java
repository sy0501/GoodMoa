package com.goodmoa.shop.dao;

import java.util.HashMap;

import com.goodmoa.shop.CustomerDto;

public interface CustomerDao {
	
	int join(CustomerDto dto) throws Exception;
	
	CustomerDto login(HashMap<String, String> map) throws Exception;



}
