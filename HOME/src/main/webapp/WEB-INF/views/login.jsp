<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ include file="/WEB-INF/include/header.jsp" %>

<section class="login_section">
	<div class="container">
	<h1>로그인</h1>
		<form method="post" action="loginok.do">
				<div class="form-group">
					<label>아이디</label><input type="text" name="userid" class="form-control">
				</div>
				<div class="form-group">
					<label>비밀번호</label><input type="password" name="password"class="form-control">
				</div>
				<div class="form-group">
					<button type="submit" class="btn" id="join-btn">로그인</button>
				</div>			
		</form>
	</div>
</section>


<%@ include file="/WEB-INF/include/footer.jsp" %>