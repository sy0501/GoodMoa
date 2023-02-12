package com.goodmoa.shop.dao;

import static org.junit.Assert.assertTrue;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.goodmoa.shop.QnaDto;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class QnaDaoImplTest {
	@Autowired
	QnaDao dao;
	
	@Test
	public void insertData() throws Exception {
		dao.deleteAll();
//		for(int i = 1; i < 40; i++) {
//			QnaDto dto = new QnaDto("title" + i, "content", "dddd");
//			dao.insert(dto);
//		}
	}
	
	@Test
	public void updateTest() throws Exception {
		QnaDto dto = new QnaDto("no title", "content", "dddd");
		assertTrue(dao.insert(dto)==1);
		
		Integer qno = dao.selectAll().get(0).getQno();
		System.out.println("qno = " + qno);
		dto.setQno(qno);
		dto.setQna_title("yes");
		assertTrue(dao.update(dto)==1);
		
		QnaDto dto2 = dao.select(qno);
		assertTrue(dto.equals(dto2));
	}
}
