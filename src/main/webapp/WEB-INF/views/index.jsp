<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GoodMoa</title>
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

	<div class="mainSlide">
	    <div class="slideImg">
	        <div><a href=""><img src="<c:url value='/img/mainSlide1.jpg'/>" alt="메이플"></a></div>
	        <div><a href=""><img src="<c:url value='/img/mainSlide3.jpg'/>" alt="배그"></a></div>
	        <div><a href=""><img src="<c:url value='/img/mainSlide4.jpg'/>" alt="로아"></a></div>
	        <div><a href=""><img src="<c:url value='/img/mainSlide5.jpg'/>" alt="쿠킹덤"></a></div>
	    </div>
	</div>
	
	<div class="sideIcon">
	    <ul>
	        <li><a href="<c:url value='/product/maple'/>"><img src="<c:url value='/img/micon.png'/>" alt="메이플스토리"></a></li>
	        <li><a href="<c:url value='/product/lostArk'/>"><img src="<c:url value='/img/licon.png'/>" alt="로스트아크"></a></li>
	        <li><a href="<c:url value='/product/battleGround'/>"><img src="<c:url value='/img/bicon.png'/>" alt="배틀그라운드"></a></li>
	        <li><a href="<c:url value='/product/cookieRunKingdom'/>"><img src="<c:url value='/img/cicon.png'/>" alt="쿠키런킹덤"></a></li>
	    </ul>
	</div>
	
	<div class="product">
	    <div class="best">
	        <h3 class="title">BEST</h3>
	        <p class="more"><a href="<c:url value='/product/best'/>">더보기</a></p>
	        <ul>
	            <li>
	                <a href="">
	                    <p class="img"><img src="<c:url value='/img/1001.jpg'/>" alt="BEST이미지1"></p>
	                    <p>메이플스토리 가습기</p>
	                    <p>35,000원</p>
	                </a>
	            </li>
	
	            <li>
	                <a href="">
	                    <p class="img"><img src="<c:url value='/img/4001.jpg'/>" alt="BEST이미지2"></p>
	                    <p>쿠키런킹덤 회중시계</p>
	                    <p>65,000원</p>
	                </a>
	            </li>
	
	            <li>
	                <a href="">
	                    <p class="img"><img src="<c:url value='/img/2002.jpg'/>" alt="BEST이미지3"></p>
	                    <p>배틀그라운드 후드티</p>
	                    <p>25,000원</p>
	                </a>
	            </li>
	
	            <li>
	                <a href="">
	                    <p class="img"><img src="<c:url value='/img/3001.jpg'/>" alt="BEST이미지4"></p>
	                    <p>로스트아크 트래블백</p>
	                    <p>60,000원</p>
	                </a>
	            </li>
	        </ul>
	    </div>
	    
	    <div class="new">
	        <h3 class="title">NEW</h3>
	        <p class="more"><a href="<c:url value='/product/new'/>">더보기</a></p>
	        <div class="newList">
	            <div>
	                <a href="">
	                    <p class="img"><img src="<c:url value='/img/4002.jpg'/>" alt="NEW이미지1"></p>
	                    <p>쿠키런킹덤 보드게임</p>
	                    <p>37,000원</p>
	                </a>
	            </div>
	
	            <div>
	                <a href="">
	                    <p class="img"><img src="<c:url value='/img/1003.jpg'/>" alt="NEW이미지2"></p>
	                    <p>메이플스토리 띠부띠부빵</p>
	                    <p>1500원</p>
	                </a>
	            </div>
	
	            <div>
	                <a href="">
	                    <p class="img"><img src="<c:url value='/img/3002.jpg'/>" alt="NEW이미지3"></p>
	                    <p>로스트아크 모코코 마그넷</p>
	                    <p>20,000원</p>
	                </a>
	            </div>
	
	            <div>
	                <a href="">
	                    <p class="img"><img src="<c:url value='/img/2001.jpg'/>" alt="NEW이미지4"></p>
	                    <p>배틀그라운드 3레벨 백팩</p>
	                    <p>50,000원</p>
	                </a>
	            </div>
	
	        </div>
	        
	    </div>
	</div>
	    
	
	<div class="ad">
	    <p>
	        <a href=""><img src="<c:url value='/img/b_banner.jpg'/>" alt=""></a>
	    </p>
	</div>
	
	<div class="board">
	    <div class="qna">
	        <h3 class="title">QnA</h3>
	        <p class="more"><a href="<c:url value='/qna/list'/>">더보기</a></p>
	        
	    </div>
	</div>


<%@include file="./footer.jsp" %>

<script>
//슬릭 슬라이드
$('.slideImg').slick({
    dots:true,
    autoplay:true,
    speed:300,
    autoplayspeed:1000,
    centerMode: true,
});

$('.newList').slick({
    infinite: true,
    slidesToShow: 3,
    slidesToScroll: 3,
    dots: false,
    arrows:false,
    autoplay:true,
    speed:400,
    autoplayspeed:100,
    centerMode:true,
});
</script>

</body>
</html>