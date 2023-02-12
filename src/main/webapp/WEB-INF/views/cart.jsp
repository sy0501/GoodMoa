<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>
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
	<div class="cartFrm">
	    <h2>장바구니</h2>
	    <div class="cFrm">
	        <c:choose>
	        	<c:when test="${map.count == 0 }">
	        		<p class="noneCart">장바구니가 비어있습니다.</p>
	        	</c:when>
	        	<c:otherwise>
	        		<form class="frm">
			            <table>
			                <tr>
			                	<th>순번</th>
			                    <th>상품번호</th>
			                    <th>상품명</th>
			                    <th>가격</th>
			                    <th>수량</th>
			                    <th>합계</th>
			                    <th></th>
			                </tr>
			    			
			                
			                <c:forEach items="${cartList}" var="cartList">
			    
				                <tr>
				                	<td>
				                		<input type="hidden" class="cart_num">
				                		${cartList.cart_num}
				                	</td>
				                    <td class="cProNum"><a href="<c:url value='/product/detail/${cartList.product_num }'/>">${cartList.product_num}</a></td>
				                    <td style="width:160px;">${cartList.product_name}</td>
				                    <td><fmt:formatNumber value="${cartList.product_price}" pattern="###,###,###원"/></td>
				                    <td>
				                        <div class="cCounting">
				                            <button id="minus">-</button>
				                            <input type="text" min="1" max="${productDto.product_stock }" class="cCount" value="${cartList.cart_count }">
				                            <button id="plus">+</button>
				                        </div>
				                        <input type="hidden" id="sellPrice" value="${cartList.product_price}">
				                    </td>
				                    <td><input type="text" class="cSumPrice" id="sumPrice" value="<fmt:formatNumber value="${cartList.product_price * cartList.cart_count}" pattern="###,###,###원"/>" readonly></td>
					                <td>
					                	<a href="<c:url value='/cart/remove?cart_num=${cartList.cart_num }'/>">삭제</a>
					                	
					                </td>
				                </tr>
			                </c:forEach>
			            </table>
			            <div class="total">
			                <label>총 금액 : </label>
			                <input type="text" readonly class="totalSumPrice" value="<fmt:formatNumber value="${map.sumPrice}" pattern="###,###,### 원"/>">
			            </div>
			            <div class="cBtn">
			                <input type="submit" value="주문하기">
			            </div>
			        </form>
	        	</c:otherwise>
	    	</c:choose>
	        
	    </div>
	</div>
<%@include file="./footer.jsp" %>

<script>
	 let msg="${msg}";
	 if(msg == "remove OK") alert("장바구니에서 삭제되었습니다.");
	 if(msg == "remove ERROR") alert("삭제하지 못하였습니다. 다시 시도하세요!");
</script>

</body>
</html>