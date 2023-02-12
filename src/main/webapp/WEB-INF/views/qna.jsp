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
	
	<script>
		let msg="${msg}";
		if(msg == "write ERROR") alert("게시글 등록에 실패했습니다.");
		if(msg == "modify ERROR") alert("게시글을 수정에 실패했습니다.");
		if(msg == "remove ERROR") alert("게시글을 삭제에 실패했습니다.");
	</script>
	
	<div class="writePage">
	<div class="writeFrm">
	    <h2> ${mode == "write" ? "문의하기" : "문의사항" }</h2>
	    <div class="wFrm">
	        <form id="frm">
	            <table>
	            <input type="hidden" name="qno" value="${qnaDto.qno }">
	                <tr>
	                    <th>제목</th>
	                    <td><input type="text" class="wTitle" name="qna_title" value="${qnaDto.qna_title }" ${mode == 'write' ? '' : 'readonly="readonly"' }></td>
	                </tr>
	                
					<c:if test="${mode != 'write' }">
		                <tr>
		                    <th>작성자</th>
		                    <td><input type="text" name="qna_writer" value="${qnaDto.qna_writer}" readonly="readonly"></td>	                	
		                </tr>
	                </c:if>
	                <tr>
	                    <th>내용</th>
	                    <td><textarea name="qna_content" id="" cols="100" rows="25" ${mode == 'write' ? '' : 'readonly="readonly"' }>
	                    	<c:out value="${qnaDto.qna_content}"/>
	                    </textarea></td>
	                </tr>
	                <tr class="wBtns">
	                    <td colspan="2">
	                    	<c:choose>
	                    		<c:when test="${mode == 'write' }">
	                    			<input type="button" id="writeBtn" value="등록">
	                        		<button type="button" onclick="back()">취소</button>
	                    		</c:when>
	                    		<c:otherwise>
	                    			<button type="button" id="modifyBtn">수정</button>
	                    			<button type="button" id="removeBtn">삭제</button>
	                        		<button type="button" id="listBtn">목록</button>
	                    		</c:otherwise>
	                    	</c:choose>
	                    	<!-- <input type="button" id="writeBtn" value="등록">
                       		<input type="button" value="취소" onclick="back()">
                       		<button type="button" id="modifyBtn">수정</button>
                   			<button type="button" id="removeBtn">삭제</button>
                       		<button type="button" id="listBtn">목록</button>  -->
	                    </td>
	                </tr>
	              </table>
	       </form>
	     </div>
	        
	</div>
	</div>
	
	<%@include file="./footer.jsp" %>
	
	<script>
		$(document).ready(function() {
			$("#writeBtn").on("click", function(){
				let frm = $("#frm");
				
				frm.attr("action", "<c:url value='/qna/write'/>");
				frm.attr("method", "post");
				
				frm.submit();
			});
			
			$("#modifyBtn").on("click", function() {
				let frm = $("#frm");
				
				let readOnly = $("input[name=qna_title]").attr("readonly");
				
				if(readOnly == 'readonly') {
					$("h2").html("문의글 수정");
					
					$("input[name=qna_title]").attr('readonly', false);
					$("textarea").attr('readonly', false);
					
					$("#modifyBtn").html("등록");
					return;
				}
				
				frm.attr("action", "<c:url value='/qna/modify'/>");
				frm.attr("method", "post");
				
				frm.submit();
			});
			
			$("#removeBtn").on("click", function() {
				let frm = $("#frm");
				frm.attr("action", "<c:url value='/qna/remove?page=${page}&pageSize=${pageSize}'/>");
				frm.attr("method", "post");
				
				frm.submit();
			});
			
			$("#listBtn").on("click", function() {
				location.href="<c:url value='/qna/list?page=${page}&pageSize=${pageSize}'/>";
			});
		});
		
	</script>
</body>
</html>