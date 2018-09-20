<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/include/header.jsp"%>
<script>
$(document).ready(function(){
 	$("#join-btn").click(function(){
	 	if($("#password").val()!=$("#re_password").val()){
	 		alert("비밀번호 확인이 일치하지 않습니다.")
	 		$("#password").val("")
	 		$("#re_password").val("")
	 		return false
	 	}else { $("form").submit() }
 	})
})
</script>

<section class="login_update_section">
<%
	request.setCharacterEncoding("utf-8");
	String user = (String) session.getAttribute("user");
	if(user != null && type.equals("0"))
	{
%>
	<div class="container">
		<article>
			<h2 class="insert_h2">회원정보 수정</h2>
			<form method="post" action="client_updateok.do">
			
				<div class="form-group">
					<label>아이디</label><input type="text" name="userid"  required="required" class="form-control" value="${vo.userid}" readonly="readonly">
				</div>
				<div class="form-group">
					<label>비밀번호</label><input type="password" name="password" id="password" required="required" class="form-control" value="${vo.password}">
				</div>
				<div class="form-group">
					<label>비밀번호확인</label><input type="password" name="re_password" id="re_password" required="required" class="form-control" value="${vo.password}">
				</div>
				<div class="form-group">
					<label>이름</label><input type="text" name="name" required="required" class="form-control" value="${vo.name}">
				</div>
				<div class="form-group">
					<label>핸드폰</label><input type="text" name="phone" required="required" class="form-control" value="${vo.phone}">
				</div>
				<div class="form-group">
					<label>주소</label><input type="text" name="addr" required="required" class="form-control" value="${vo.addr}">
				</div>
				<div class="form-group">
					<label>이메일</label><input type="email" name="email" required="required" class="form-control" value="${vo.email}">
				</div>
				<div class="form-group">
					<input type = "hidden" name = "type" value = "0" class="form-control" >
				</div>	
					<input type="hidden" name="mediation_num" value="0" required class="form-control">
				<div class="form-group">
					<input type="hidden" name="register_num" value="0" required class="form-control">
				</div>								
							
				<input type="button" class="btn" id="join-btn" value="회원정보 수정"/>
				<input type="button" class="btn" value="취소" onclick="location.href='/home/index.jsp';">
			
			</form>
		</article>
	</div>
<%}else{%>
	<div class="container">
		<article>
			<h2 class="insert_h2">회원정보 수정</h2>
			<form method="post" action="agent_updateok.do">
			
				<div class="form-group">
					<label>아이디</label><input type="text" name="userid" required class="form-control"value="${vo.userid}" readonly="readonly">
				</div>
				<div class="form-group">
					<label>비밀번호</label><input type="password" name="password" required class="form-control" value="${vo.password}">
				</div>
				<div class="form-group">
					<label>비밀번호확인</label><input type="password" name="re_password" required class="form-control" value="${vo.password}">
				</div>
				<div class="form-group">
					<label>이름</label><input type="text" name="name" required class="form-control" value="${vo.name}">
				</div>
				<div class="form-group">
					<label>핸드폰</label><input type="text" name="phone" required class="form-control"value="${vo.phone}">
				</div>
				<div class="form-group">
					<label>주소</label><input type="text" name="addr" required class="form-control" value="${vo.addr}">
				</div>
				<div class="form-group">
					<label>이메일</label><input type="email" name="email" required class="form-control"value="${vo.email}">
				</div>
				<div class="form-group">
					<input type = "hidden" name = "type" value = "1" class="form-control" >
				</div>					
				<div class="form-group">
					<label>중개사등록번호</label><input type="text" name="mediation_num" required class="form-control" value="${vo.mediation_num}">
				</div>
				<div class="form-group">
					<label>사업자등록번호</label><input type="text" name="register_num" required class="form-control"value="${vo.register_num}">
				</div>	
											
				<input type="button" class="btn" id="join-btn" value="회원정보 수정"/>
				<input type="button" class="btn" value="취소" onclick="location.href='/home/index.jsp';">

			</form>
		</article>
	</div>
<%}%>

</section>
<%@ include file="/WEB-INF/include/footer.jsp"%>