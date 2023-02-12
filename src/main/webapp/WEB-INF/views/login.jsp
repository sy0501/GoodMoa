<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
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
	
	<div class="loginPage">
	    <h2>로그인</h2>
	    <div class="login">
	    
	        <form action="<c:url value='/login/login'/>" method="post" onsubmit="return formCheck(this);">
	            <table>
	            	<tr>
	            		<td colspan="2">
	            			<div id="errmsg">
							    <c:if test="${not empty param.msg }">
							    	<p>${URLDecoder.decode(param.msg) }</p>
							    </c:if>
						    </div>
	            		</td>
	            	</tr>
	                <tr>
	                    <td><label for="userId" class="title">아이디</label></td>
	                    <td><input type="text" name="custom_id" placeholder="아이디를 입력하세요" value="${cookie.custom_id.value}" id="userId" class="content" ></td>
	                </tr>
	                <tr>
	                    <td><label for="userPw" class="title">비밀번호</label></td>
	                    <td>
	                    	<input type="password" name="custom_pw" placeholder="비밀번호를 입력하세요" id="userPw" class="content" >
	                    	<input type="hidden" name="toURL" value="${param.toURL}">
	                    </td>
	                </tr>
	                <tr>
	                    <td colspan="2" class="check">
	                        <input type="checkbox" id="idCheck" name="rememberId" ${empty cookie.id.value? "" : "checked"}>
	                        <label for="idCheck">아이디 저장</label>
	                    </td>
	                </tr>
	                <tr>
	                    <td colspan="2">
	                        <input type="submit" value="로그인" class="loginBtn" onclick="login()">
	                    </td>
	                </tr>
	            </table>
	            <script>
	            	function formCheck(frm) {
		        		let msg = '';
		        		
		        		if(frm.id.value.length==0) {
		        			setMsg('아이디를 입력해주세요.',frm.id);
		        			return false;
		        		}
		        		
		        		if(frm.pw.value.length==0) {
		        			setMsg('비밀번호를 입력해주세요', frm.pw);
		        			return false;
		        		}
		        		return true;
		        	}    
	            
		            function setMsg(msg, element) {
		            	document.getElementById("errmsg").innerHTML = `${'${msg}'}`;
		            	
		            	if(element) {
		            		element.select();
		            	}
		            }
	            </script>
	        </form>
	
	    </div>
	</div>
	
	<%@include file="./footer.jsp" %>
	
</body>
</html>