<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product</title>
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
		<div class="detailPage">
	        <div class="detailImg">
	            <img src="<c:url value="/img/${productDto.product_num}.jpg"/>" alt="이미지">
	        </div>
	        <div class="detailContent">
	            <h3 class="detailTitle">${dto.product_name}</h3>
	            <p class="detailPrice"><fmt:formatNumber value="${dto.product_price}" pattern="###,###,###원"/></p>
	            <p class="detailInfo">
	                <span>
	                    ${dto.product_content}
	                </span>
	            </p>
	
	            <form>
	            	<input type="hidden" name="product_num" id="product_num" value="${dto.product_num}">
	                <div class="detailBuy">
	                    <table>
	                        <tr>
	                            <th>상품명</th>
	                            <th>상품수</th>
	                            <th>가격</th>
	                        </tr>
	                        <tr>
	                            <td>${dto.product_name}</td>
	                            <td class="countBox">
	                                <input type="text" min="1" max="${dto.product_stock }" class="count" id="count" value="">
	                                <div class="counting">
	                                    <p><button type="button" class="plus" id="plus">+</button></p>
	                                    <p><button type="button" class="minus" id="minus">-</button></p>
	                                </div>
	                                <input type="hidden" class="sellPrice" id="sellPrice" value="${dto.product_price}">
	                            </td>
	                            <td><input type="text" class="sumPrice" id="sumPrice" value="<fmt:formatNumber value="" pattern="###,###,###원"/>" readonly></td>
	                        </tr>
	                    </table>
	                </div>
	                <input class="cartBtn" type="button" value="장바구니에 담기">
	            </form>
	            </div>
	        </div>
	<%@include file="./footer.jsp" %>
	
	<script>
	
	$("#plus").click(function(){
	   var num = $(".count").val();
	   var plusNum = Number(num) + 1;
	   var sum = $(".sumPrice").val();
	   
	   
	   if(plusNum >= ${dto.product_stock}) {
	    $(".count").val(num);
	    $(".sumPrice").val(num * ${dto.product_price});
	   } else {
	    $(".count").val(plusNum); 
	    $(".sumPrice").val(plusNum * ${dto.product_price});
	   }
	  });
	  
	  $("#minus").click(function(){
	   var num = $(".count").val();
	   var minusNum = Number(num) - 1;
	   var sum = $(".sumPrice").val();

	   if(minusNum <= 0) {
	    $(".count").val(num);
	    $(".sumPrice").val(num * ${dto.product_price});
	   } else {
	    $(".count").val(minusNum);   
	    $(".sumPrice").val(minusNum * ${dto.product_price});
	   }
	  });
		
	</script>
	
	<script>
	   $(".cartBtn").click(function(){
	    var product_num = $("#product_num").val();
	    var cart_count = $(".count").val();
	             
	    var data = {
	    	product_num : product_num,
	    	cart_count : cart_count
	      };
	    
	    $.ajax({
	     url : "/shop/cart/add",
	     type : "post",
	     data : data,
	     success : function(result){
	      
	      if(result == 1) {
	       alert("장바구니에 담았습니다.");
	       location.href="/shop/cart/cartList";
	      } else {
	       alert("회원만 사용할 수 있습니다.");
	      }
	     },
	     error : function(){
	      alert("장바구니에 담지 못했습니다. 다시 시도하세요!");
	     }
	    });
	   });
	</script>

</body>
</html>