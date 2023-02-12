package com.goodmoa.shop;

import java.util.Date;
import java.util.Objects;

public class QnaDto {
	private Integer qno;
	private String qna_title;
	private String qna_content;
	private Date qna_date;
	private String qna_writer;
	
	public QnaDto() {}
	public QnaDto(String qna_title, String qna_content, String qna_writer) {
		this.qna_title = qna_title;
		this.qna_content = qna_content;
		this.qna_writer = qna_writer;
	}
	
	public Integer getQno() {
		return qno;
	}
	public void setQno(Integer qno) {
		this.qno = qno;
	}
	public String getQna_title() {
		return qna_title;
	}
	public void setQna_title(String qna_title) {
		this.qna_title = qna_title;
	}
	public String getQna_content() {
		return qna_content;
	}
	public void setQna_content(String qna_content) {
		this.qna_content = qna_content;
	}
	public Date getQna_date() {
		return qna_date;
	}
	public void setQna_date(Date qna_date) {
		this.qna_date = qna_date;
	}
	public String getQna_writer() {
		return qna_writer;
	}
	public void setQna_writer(String qna_writer) {
		this.qna_writer = qna_writer;
	}
	@Override
	public int hashCode() {
		return Objects.hash(qna_content, qna_title, qna_writer, qno);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		QnaDto other = (QnaDto) obj;
		return Objects.equals(qna_content, other.qna_content) && Objects.equals(qna_title, other.qna_title)
				&& Objects.equals(qna_writer, other.qna_writer) && Objects.equals(qno, other.qno);
	}
	
}
