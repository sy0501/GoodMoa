package com.goodmoa.shop.dao;

import java.util.List;
import java.util.Map;

import com.goodmoa.shop.QnaDto;
import com.goodmoa.shop.SearchCondition;

public interface QnaDao {

	QnaDto select(int qno) throws Exception;

	int count() throws Exception;

	int insert(QnaDto dto) throws Exception;

	int update(QnaDto dto) throws Exception;

	int delete(Integer qno, String qna_writer) throws Exception;

	int deleteAll();

	List<QnaDto> selectAll() throws Exception;

	List<QnaDto> selectPage(Map map) throws Exception;


}