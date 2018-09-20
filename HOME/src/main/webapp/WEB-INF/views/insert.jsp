<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/include/header.jsp" %>

<section class="insert_section">
		
		<h2>일반 회원입니까? 공인중개사 회원입니까?</h2>
	<div class="insert_wrap">
		<input type="button" class="btn" value="일반 회원 가입" onclick="location.href='/home/client_insert.do';">
		<input type="button" class="btn" value="공인중개사 회원가입" onclick = "location.href='/home/agent_insert.do';">
	</div>	
</section>
<%@ include file="/WEB-INF/include/footer.jsp" %>

