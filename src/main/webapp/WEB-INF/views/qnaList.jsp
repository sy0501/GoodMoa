<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QNA</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<link href="<c:url value='/css/style.css'/>" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script type="text/javascript" src="<c:url value='/js/script.js'/>"></script>

</head>
<body>
	<%@include file="./header.jsp" %>
	
	<div class="qnaPage">
	<h2>QnA</h2>
    <div class="qTotal">총 게시글 수 : ${ph.getTotalCnt() } 개</div>
	<div class="qBtn"><button type="button" class="writeBtn" onclick="location.href='<c:url value="/qna/write"/>'">글쓰기</button></div>
	    <div class="qTable">
	    
	        <table class="qnaTable">
	            <tr>
	                <th>순번</th>
	                <th class="qnaTitle">제목</th>
	                <th>작성자</th>
	                <th>게시일자</th>
	            </tr>
	            
	            <c:forEach var="qnaDto" items="${list}">
	           		<tr class="qTitle">
	                	<td>${qnaDto.qno }</td>
	                	<td><a href="<c:url value='/qna/read${ph.sc.getQueryString()}&qno=${qnaDto.qno}'/>">
	                		<c:out value='${qnaDto.qna_title}'/>
	                	</a></td>
	                	<td>${qnaDto.qna_writer}</td>
	                	<c:choose>
	                		<c:when test="${qnaDto.qna_date.time >= startOfToday}">
	                			<td><fmt:formatDate value="${qnaDto.qna_date}" pattern="HH:mm" type="time"/></td>
	                		</c:when>
	                		<c:otherwise>
	                			<td><fmt:formatDate value="${qnaDto.qna_date}" pattern="yyyy-MM-dd" type="date"/></td>
	                		</c:otherwise>
	                	</c:choose>
	                	
	                </tr>
	            </c:forEach>
	        </table>
	        <c:if test="${ph.getTotalCnt()==nulll || ph.getTotalCnt()==0 }">
	        	<div class="noContent">게시물이 없습니다.</div>
	        </c:if>
	        
	        <c:if test="${ph.getTotalCnt()!=null && ph.getTotalCnt()!=0 }">
	        	<div class="pages">
	        		<c:if test="${ph.showPrev}">
	        			<a href="<c:url value='/qna/list${ph.sc.getQueryString(ph.beginPage-1)}'/>">
	        				<img class="qArrow" src="<c:url value='/img/backarrow.png'/>" alt="">
	        			</a>
	        		</c:if>
	        		
	        		<c:forEach var="i" begin="${ph.beginPage}" end="${ph.endPage}">
	        			<a href="<c:url value='/qna/list${ph.sc.getQueryString(i)}'/>"> ${i} </a>	        		
	        		</c:forEach>
	        		
	        		<c:if test="${ph.showNext}">
	        			<a href="<c:url value='/qna/list${ph.sc.getQueryString(ph.endPage+1)}'/>">
	        				<img class="qArrow" src="<c:url value='/img/forwardarrow.png'/>" alt="">
	        			</a>
	        		</c:if>
	        	</div>
	        </c:if>
	    </div>
	</div>
	
	<%@include file="./footer.jsp" %>
	
	<script>
		let msg="${msg}";
		if(msg == "modify OK") alert("게시글을 수정하였습니다.");
		if(msg == "write OK") alert("게시글을 등록하였습니다.");
		if(msg == "remove OK") alert("게시글을 삭제하였습니다.");
		if(msg == "LIST_ERR") alert("게시글을 불러오지 못했습니다.");
	</script>
	
</body>
</html>