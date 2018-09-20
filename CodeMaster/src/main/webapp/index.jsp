<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="resources/imgs/favicon.png" type="image/x-icon">
<link rel="icon" href="resources/imgs/favicon.png" type="image/x-icon">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Sunflower:300" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Merriweather+Sans" rel="stylesheet">
<link rel="stylesheet" href="resources/css/style.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>CodeMaster</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script>
	$(document).ready(function(){
		$('#section_B_A').mouseover(function(){
			$(this).css('opacity','0.6')
		 	$(this).css('cursor','pointer')
		})
		
		$('#section_B_A').mouseout(function(){
			$(this).css('opacity','1')
		})
		
		$('#section_B_A').click(function(){
			document.location.href="https://www.youtube.com/"
		})
		
		
		$('#section_B_B').mouseover(function(){
			$(this).css('opacity','0.6')
			$(this).css('cursor','pointer')
		})
		
		$('#section_B_B').mouseout(function(){
			$(this).css('opacity','1')
		})
		
		$('#section_B_B').click(function(){
			document.location.href="https://www.youtube.com/"
		})
		
		
		
		$('#section_B_C').mouseover(function(){
			$(this).css('opacity','0.6')
			$(this).css('cursor','pointer')
		})
		
		$('#section_B_C').mouseout(function(){
			$(this).css('opacity','1')
		})
		
		$('#section_B_C').click(function(){
			document.location.href="https://www.youtube.com/"
		})
		
		
		$('#section_B_D').mouseover(function(){
			$(this).css('opacity','0.6')
			$(this).css('cursor','pointer')
		})
		
		$('#section_B_D').mouseout(function(){
			$(this).css('opacity','1')
		})
		
		$('#section_B_D').click(function(){
			document.location.href="https://www.youtube.com/"
		})
		
	});


</script>
</head>
<body>

<section class="section_A">
	<a href="index.jsp"><img src="resources/imgs/logo.png" alt="logo" class="logo"></a>
	
	<ul class="main-menu">
		<li><a href="#">ABOUT</a></li>
		<li><a href="#">INSTRUCTORS</a></li>
		<li><a href="#">VIDEO</a></li>
		<li><a href="#">PARTNERS</a></li>
		<li><a href="#">STORES</a></li>
	</ul>
	
	<hr class="main-menu-distingushed-menu">
	
	<ul class="sub-menu">
		<li><a href="https://www.youtube.com/"><i class="fab fa-youtube"></i></a></li>
		<li><a href="https://www.facebook.com/"><i class="fab fa-facebook-square"></i></a></li>
		<li><a href="https://www.instagram.com/?hl=ko"><i class="fab fa-instagram"></i></a></li>
	</ul>
</section>

<section class="section_B">
	<div class="section_B_A" id="section_B_A">
		<p class="section_B_topic">수강등록 하는법</p>
		<hr>
		<p class="section_B_content">
		수강등록 하는 방법이 궁금하신가요?</br>
		 영상을 통해 자세히 알아보세요.
		</p>
	</div>
	<div class="section_B_B" id="section_B_B">
		<p class="section_B_topic">수업 시간표</p>
		<hr>
		<p class="section_B_content">
		구체적인 수업 시간표를</br> 
		   확인해보세요.
		</p>
	</div>
	<div class="section_B_C" id="section_B_C">
		<p class="section_B_topic">영상 보러가기</p>
		<hr>
		<p class="section_B_content">
		1000만명이 구독중이에요!</br>
	지금 유튜브에서 영상을 확인하세요
		</p>
	</div>
	<div class="section_B_D" id="section_B_D">
		<p class="section_B_topic">오시는 길</p>
		<hr>
		<p class="section_B_content">
		CodeMaster는</br> 
		항상 열려있습니다.
		</p>
	</div>
</section>

<footer>
	<div class="footer_logo">
		<img src="resources/imgs/logo.png" alt="로고">
		<p>CodeMaster</p>
	</div>
	
	<address>
		<p>117-32, Wolgye-ro, Gwangsan-gu, Gwangju, Korea</p>
		<p>Business License Number 358-81-01234 Co-Founder:Simon</p>
		<p>Phone:010-1234-xxxx E-mail:123456@naver.com</p>
		</br></br>
		<copyright> &copy;2018.CodeMaster inc All Rights Reserved.</copyright>
	</address>
		

	<ul>
		<li><a href="https://www.youtube.com/"><i class="fab fa-youtube"></i></a></li>
		<li><a href="https://www.facebook.com/"><i class="fab fa-facebook-square"></i></a></li>
		<li><a href="https://www.instagram.com/?hl=ko"><i class="fab fa-instagram"></i></a></li>
	</ul>
	
</footer>
</body>
</html>