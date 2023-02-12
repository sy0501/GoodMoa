package com.goodmoa.shop.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.goodmoa.shop.QnaDto;
import com.goodmoa.shop.SearchCondition;

@Repository
public class QnaDaoImpl implements QnaDao {
	@Autowired
	SqlSession session;
	String namespace="com.goodmoa.shop.dao.QnaMapper.";
	
	@Override
	public QnaDto select(int qno) throws Exception{
		return session.selectOne(namespace + "select", qno);
	}
	
	@Override
	public int count() throws Exception {
		return session.selectOne(namespace + "count");
	}
	
	@Override
	public int insert(QnaDto dto) throws Exception{
		return session.insert(namespace + "insert", dto);
	}
	
	@Override
	public int update(QnaDto dto) throws Exception{
		return session.update(namespace + "update", dto);
	}
	
	@Override
	public int delete(Integer qno, String qna_writer) throws Exception{
		Map map = new HashMap();
		map.put("qno", qno);
		map.put("qna_writer", qna_writer);
		return session.delete(namespace + "delete", map);
	}
	
	@Override
	public int deleteAll() {
		return session.delete(namespace + "deleteAll");
	}
	
	@Override
	public List<QnaDto> selectAll() throws Exception {
		return session.selectList(namespace + "selectAll");
	}
	
	@Override
	public List<QnaDto> selectPage(Map map) throws Exception{
		return session.selectList(namespace + "selectPage", map);
	}
	
	
	
}
