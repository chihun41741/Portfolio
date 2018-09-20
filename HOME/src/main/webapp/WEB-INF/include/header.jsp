<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Pen+Script" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<title>Stay Home</title>
</head>
<body>
	<div class="wrap">
	<header>
		<div class="logo">
			<a href="index.jsp"><img src="${pageContext.request.contextPath}/resources/imgs/logo.png"  alt="로고"></a>
		</div>

		<%
			request.setCharacterEncoding("utf-8");
			String userid = (String) session.getAttribute("user");
			String type = (String) session.getAttribute("type");


			if(userid != null && type.equals("0"))
			{
		%>
		<ul class="header_menu">
			<li><a href="/home/purchase_insert.do" class="btn">방 신청</a></li>
			<li><a href="/home/sale_list.do" class="btn">방 목록</a></li>
			<li><a href="/home/mypage.do" class="btn"><%=userid%>님 마이페이지</a></li>
			<li><a href="/home/logout.do" class="btn">로그아웃</a></li>
		</ul>
		<%} else if(userid != null && type.equals("1")) {%>
		<ul class="header_menu">
			<li><a href="/home/sale_insert.do" class="btn">방 등록</a></li>
			<li><a href="/home/purchase_list.do" class="btn">방 신청 목록</a></li>
			<li><a href="/home/mypage.do" class="btn"><%=userid%>님 마이페이지</a></li>
			<li><a href="/home/logout.do" class="btn">로그아웃</a></li>
		</ul>
		
		<% } else {%>
		<ul class="header_menu">
			<li><a href="/home/insert.do" class="btn">회원가입</a></li>
			<li><a href="/home/login.do" class="btn">로그인</a></li>
		</ul>
		<% } %>
	</header>
	<div class="clear"></div>