package com.goodmoa.shop.service;

import java.util.List;
import java.util.Map;

import com.goodmoa.shop.QnaDto;
import com.goodmoa.shop.SearchCondition;

public interface QnaService {

	int getCount() throws Exception;

	int remove(Integer qno, String qna_writer) throws Exception;

	int write(QnaDto dto) throws Exception;

	List<QnaDto> getList() throws Exception;

	QnaDto read(Integer qno) throws Exception;

	List<QnaDto> getPage(Map map) throws Exception;

	int modify(QnaDto dto) throws Exception;


}