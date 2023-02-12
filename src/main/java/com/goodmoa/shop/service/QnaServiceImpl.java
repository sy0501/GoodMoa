package com.goodmoa.shop.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goodmoa.shop.QnaDto;
import com.goodmoa.shop.SearchCondition;
import com.goodmoa.shop.dao.QnaDao;

@Service
public class QnaServiceImpl implements QnaService {
	@Autowired
	QnaDao dao;
	
	@Override
	public int getCount() throws Exception{
		return dao.count();
	}
	
	@Override
	public int remove(Integer qno, String qna_writer) throws Exception{
		return dao.delete(qno, qna_writer);
	}
	
	@Override
	public int write(QnaDto dto) throws Exception{
		return dao.insert(dto);
	}
	
	@Override
	public List<QnaDto> getList() throws Exception{
		return dao.selectAll();
	}
	
	@Override
	public QnaDto read(Integer qno) throws Exception{
		return dao.select(qno);
	}
	
	@Override
	public List<QnaDto> getPage(Map map) throws Exception{
		return dao.selectPage(map);
	}
	
	@Override
	public int modify(QnaDto dto) throws Exception{
		return dao.update(dto);
	}
	
}
