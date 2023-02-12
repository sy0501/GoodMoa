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
	<header class="header">
            <h1 class="adminHeader">관리자모드</h1>
            <p class="adminLogout"><a href="<c:url value='/login/adminlogout'/>">로그아웃</a></p>
	</header>
	
<section>
	<div class="adminPage">
   	<div class="adminProduct">
       <h2>상품관리</h2>
       <div class="adminFrm">
           <form action="">
               <table>
                   <tr>
                       <th>분류</th>
                       <td>
                           <select name="" id="">
                               <option value="">게임명</option>
                               <option value="">메이플스토리</option>
                               <option value="">로스트아크</option>
                               <option value="">배틀그라운드</option>
                               <option value="">쿠키런킹덤</option>
                           </select>
                           <select name="" id="">
                               <option value="">구분</option>
                               <option value="">잡화</option>
                               <option value="">의류</option>
                               <option value="">악세서리</option>
                               <option value="">음식</option>
                           </select>
                       </td>
                   </tr>
                   <tr>
                       <th>상품코드</th>
                       <td><input type="text"></td>
                   </tr>
                   <tr>
                       <th>상품명</th>
                       <td><input type="text"></td>
                   </tr>
                   <tr>
                       <th>상품가격</th>
                       <td><input type="text"></td>
                   </tr>
                   <tr>
                       <th>상품재고</th>
                       <td><input type="text"></td>
                   </tr>
                   <tr>
                       <th>상품소개</th>
                       <td><textarea name="" id="" cols="40" rows="10"></textarea></td>
                   </tr>
                   <tr>
                       <th>상태</th>
                       <td>
                           <input type="radio" name="state" id="new">
                           <label for="new" class="items">신상품</label>
                           <input type="radio" name="state" id="best">
                           <label for="best" class="items">인기상품</label>
                           <input type="radio" name="state" id="sale">
                           <label for="sale" class="items">할인상품</label>
                       </td>
                   </tr>
                   <tr>
                       <th>이미지</th>
                       <td><input type="file"></td>
                   </tr>
                   <tr>
                       <td colspan="2">
                           <input type="submit" value="등록" class="updateProductBtn">
                       </td>
                   </tr>
               </table>
           </form>
       </div>
   </div> <!-- .adminProduct -->

	</div>
	
</section>
	
<footer>
    <div class="adminMain">
        <button class="adminMainBtn"><a href="<c:url value='/'/>">메인으로</a></button>
    </div>
</footer>
	
</body>
</html>