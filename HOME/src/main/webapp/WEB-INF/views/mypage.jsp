<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/header.jsp" %>

<section class="mypage_section">

 <h2><%=userid%>님의 마이 페이지</h2>
	<div class="container">
		<input type="button" class="btn" value="회원정보 수정" onclick="location.href='/home/login_update.do';">
		<input type="button" class="btn" value="회원정보 삭제" onclick="location.href='/home/user_delete.do';">

		<%
			if(userid != null && type.equals("0")) //일반고객일떄
			{
		%>
			<input type="button" class="btn" value="게시물 관리" onclick = "location.href='/home/purchase_list_by_id.do';">
		<%} else if(userid != null && type.equals("1")) {%> <%//공인중개사일떄 %>
			<input type="button" class="btn" value="게시물 관리" onclick = "location.href='/home/sale_list_by_id.do';">
		<% }%>
	</div>
</section>
<%@ include file="/WEB-INF/include/footer.jsp" %>

