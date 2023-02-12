<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join</title>
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
	<div class="joinPage">
	    <h2>회원가입</h3>
	    <div class="joinFrm">
	    	<div id="msg" class="msg"> ${URLDecoder.decode(param.msg, "utf-8")} </div> 
	    
	        <form action="<c:url value='/join/register'/>" method="post" onsubmit="return formCheck(this)">
	        
	            <table>
	                <tr>
	                    <td><label for="custom_id">아이디</label></td>
	                    <td><input type="text" id="joinUserId" name="custom_id" value="${customerDto.custom_id}" class="content" placeholder="아이디 입력"></td>
	                </tr>
	                <tr>
	                    <td><label for="custom_pw">비밀번호</label></td>
	                    <td><input type="password" id="joinUserPw" name="custom_pw" value="${customerDto.custom_pw}" class="content" placeholder="비밀번호 입력"></td>
	                </tr>
	                <tr>
	                    <td><label for="checkUserPw">비밀번호 확인</label></td>
	                    <td><input type="password" id="checkUserPw" name="checkUserPw" class="content" placeholder="비밀번호 재입력"></td>
	                </tr>
	                <tr>
	                    <td><label for="custom_name">이름</label></td>
	                    <td><input type="text" id="joinName" name="custom_name" value="${customerDto.custom_name}" class="content"></td>
	                </tr>
	                <tr>
	                    <td><label for="custom_tel">휴대전화</label></td>
	                    <td><input type="text" id="joinPhone" name="custom_tel" value="${customerDto.custom_tel}" class="content" placeholder="전화번호 입력 (010-0000-0000)"></td>
	                </tr>
	                <tr>
	                    <td><label for="custom_addr">주소</label></td>
	                    <td><input type="text" id="joinAddr" name="custom_addr" value="${customerDto.custom_addr}" class="content"></td>
	                </tr>
	                <tr>
	                    <td colspan="2">
	                        <input type="submit" value="가입하기" class="joinBtn">
	                    </td>
	                </tr>
	            </table>
	        </form>
	    </div>
	</div>
	
	
<%@include file="./footer.jsp" %>
	
	<script>
		function formCheck(frm) {
	        var msg ='';
	
	        if(frm.joinUserId.value.length<4) {
	            setMessage('아이디의 길이는 4글자이상이어야 합니다.', frm.joinUserId);
	            return false;
	        }
	        
	        if(frm.joinUserPw.value.length<4){
	        	setMessage('비밀번호의 길이는 4글자 이상이어야 합니다.', frm.joinUserPw);
	        	return false;
	        }
	        
	        if(frm.joinUserPw.value != frm.checkUserPw.value){
	        	setMessage('비밀번호를 다시 확인해주세요');
	        	return false;
	        }
	        
	        if(frm.joinName.value == '') {
	        	setMessage('이름을 입력하세요');
	        	return false;
	        }
	        
	        if(frm.joinAddr.value == '') {
	        	setMessage('주소를 입력하세요');
	        	return false;
	        }
			
	       alert('회원가입이 완료되었습니다!');
	       return true;
	   }
	
	   function setMessage(msg, element){
	        document.getElementById("msg").innerHTML = `<i class="fa fa-exclamation-circle"> \${msg}</i>`;
	
	        if(element) {
	            element.select();
	        }
	   }
	</script>
</body>
</html>
