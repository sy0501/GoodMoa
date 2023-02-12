<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product</title><link rel="preconnect" href="https://fonts.googleapis.com">
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
	<div class="bestPage">
		<h2>
			<c:choose>
				<c:when test="${mode == 'best'}">
					BEST
				</c:when>
				<c:when test="${mode == 'sale' }">
					SALE
				</c:when>
				<c:when test="${game == 'maple' }">
					메이플스토리
				</c:when>
				<c:when test="${game == 'battle' }">
					배틀그라운드
				</c:when>
				<c:when test="${game == 'ark' }">
					로스트아크
				</c:when>
				<c:when test="${game == 'kingdom' }">
					쿠키런킹덤
				</c:when>
				<c:otherwise>
					NEW
				</c:otherwise>
			</c:choose>
			
		</h2>
		<div class="bList">
		    <ul>
		    	<c:forEach items="${list}" var="productDto">
			        <li>
			            <div class="item">
			            	<input type="hidden" name="product_num" value="${productDto.product_num}">
			                <a href="<c:url value='/product/detail/${productDto.product_num }'/>">
			                    <p class="img"><img src="<c:url value="/img/${productDto.product_num}.jpg"/>" alt=""></p>
			                    <p>${productDto.product_name}</p>
			                    <input type="hidden" name="product_name" value="${productDto.product_name}">
			                    <p><fmt:formatNumber value="${productDto.product_price}" pattern="###,###,###원"/></p>
			                    <input type="hidden" name="product_price" value="${productDto.product_price}">
			                </a>
			            </div>
			            
			        </li>
				</c:forEach>
		        
		    </ul>
		</div> <!--bList-->
	</div> <!--bestPage-->
	<%@include file="./footer.jsp" %>
</body>
</html>