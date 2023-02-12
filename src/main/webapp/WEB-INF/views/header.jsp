<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="loginId" value="${sessionScope.custom_id }" />

<c:set var="loginOutLink" value="${sessionScope.custom_id==null? '/login/login' : '/login/logout' }" />

<c:set var="loginOut" value="${sessionScope.custom_id==null? '로그인' : '로그아웃' }" />

<c:set var="adminLogin" value="${sessionScope.custom_id=='admin'? '관리자모드' : ''}" />

<c:set var="adminLoginLink" value="${sessionScope.custom_id =='admin'? '/shop/login/admin' : '' }"/>

<header class="header">
    <div class="headerIn">
        <div class="sc">
            <h1 class="logo">
                <a href="<c:url value='/'/>">
                    <img src="<c:url value='/img/logo.png'/>" alt="">
                </a>
            </h1>
            <div class="search">
                <ul>
                    <li><input type="text" placeholder="검색" class="scBox"></li>
                    <li><button class="btnSc">검색</button></li>
                </ul>
            </div>
            <nav class="menu">
                <ul>
                    <li><a href="<c:url value='${loginOutLink }'/>">${loginOut }</a></li>
                    <li><a href="${adminLoginLink }">${adminLogin }</a></li>
                    <c:if test="${sessionScope.custom_id != 'admin' }">
                    	<li><a href="<c:url value='/cart/cartList'/>">장바구니</a></li>
                    </c:if>
                    <li>
                    	<c:choose>
                    		<c:when test="${sessionScope.custom_id != null }">
                    			<span style="color:lightblue;">${login.custom_id}</span> 님 환영합니다!
                    		</c:when>
                    		<c:otherwise>
                    		<a href="<c:url value='/join/join'/>">회원가입</a>
                    		</c:otherwise>
                    	</c:choose>
                    </li>
                </ul>
            </nav>
        </div> <!--.sc-->
        
        <nav class="gnb">
            <ul>
                <li><a href="<c:url value='/product/best'/>">BEST</a></li>
                <li><a href="<c:url value='/product/new'/>">NEW</a></li>
                <li><a href="<c:url value='/product/sale'/>">SALE</a></li>
                <li><a href="<c:url value='/qna/list'/>">QNA</a></li>
            </ul>
        </nav>

        <div class="category">
            <p class="cate">카테고리</p>
            <div class="cateList">
                <ul>
                    <li><p><a href="">잡화</a></p></li>
                    <li><p><a href="">의류</p></a></li>
                    <li><p><a href="">악세서리</p></a></li>
                    <li><p><a href="">음식</a></p></li>
                </ul>
            </div>
            
        </div>
    </div> <!--.headerIn-->
</header> <!--.header-->