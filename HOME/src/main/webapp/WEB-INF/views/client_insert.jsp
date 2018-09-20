<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/include/header.jsp" %>
<script>
	$(document).ready(function() {
		$('#checkId').click(function() {
			$.post("/home/checkid.do", {
				userid : $("#userid").val()
			})

			.done(function(result) {
				if (result.num > 0) {
					$("#checkIdResult").text("이미 사용중인 아이디입니다.")
				} else {
					$("#checkIdResult").text("사용가능한 아이디입니다.")
				}
			}).fail(function() {
				alert("아이디 중복 검사 오류!!")
			})
		})
		$("#join-btn").click(function() {

			if ($("#userid").val() == "") {
				alert("아이디를 입력해주세요.")
				$("#userid").focus();
				return false;
			}

			if ($("#password").val() == "") {
				alert("비밀번호를 입력해주세요.")
				$("#password").focus();
				return false;
			}

			if ($("#re_password").val() == "") {
				alert("비밀번호확인을 입력해주세요.")
				$("#re_password").focus();
				return false;
			}

			if ($("#name").val() == "") {
				alert("이름을 입력해주세요.")
				$("#name").focus();
				return false;
			}
			if ($("#phone").val() == "") {
				alert("핸드폰번호를 입력해주세요.")
				$("#phone").focus();
				return false;
			}
			if ($("#addr").val() == "") {
				alert("주소를 입력해주세요.")
				$("#addr").focus();
				return false;
			}
			if ($("#email").val() == "") {
				alert("이메일을 입력해주세요.")
				$("#email").focus();
				return false;
			}

			if ($("#password").val() != $("#re_password").val()) {
				alert("비밀번호 확인이 일치하지 않습니다.")
				$("#password").val("")
				$("#re_password").val("")
				return false
			} else {
				$("form").submit()
			}
		})

	})
</script>		

	<section class="client_insert_section">
		<article>
			<h2 class="insert_h2">회원가입</h2>
			<form method="post" action="client_insert_ok.do"> 
			<div class="container">
				<div class="form-group">
					<label>아이디</label><input type="text" name="userid" id="userid" class="form-control" placeholder="아이디를 입력하새요">
					<button id="checkId" class="btn" type="button">ID중복체크</button><span id="checkIdResult"></span>
				</div>
				<div class="form-group">
					<label>비밀번호</label><input type="password" name="password" id="password" class="form-control" placeholder="비밀번호를 입력히세요" >
				</div>
				<div class="form-group">
					<label>비밀번호확인</label><input type="password" name="re_password" id="re_password" class="form-control" placeholder="비밀번호를 입력히세요">
				</div>
				<div class="form-group">
					<label>이름</label><input type="text" name="name" id="name" class="form-control" placeholder="이름을 입력하세요">
				</div>
				<div class="form-group">
					<label>핸드폰</label><input type="text" name="phone" id="phone" class="form-control" placeholder="010-XXXX-XXXX">
				</div>
				<div class="form-group">
					<label>주소</label><input type="text" name="addr" id="addr" class="form-control" placeholder="주소를 입력하세요">
				</div>
				<div class="form-group">
					<label>이메일</label><input type="email" name="email" id="email" class="form-control" placeholder="XXXXXXX@XXXXX.XXX">
				</div>
				<div class="form-group">
					<input type = "hidden" name = "type" value = "0" class="form-control" >
				</div>	
				<div class="form-group">
					<input type="hidden" name="mediation_num" value="0" class="form-control">
				</div>
				<div class="form-group">
					<input type="hidden" name="register_num" value="0" class="form-control">
				</div>								
							
				<input type="button" class="joinBtn" id="join-btn" value="회원가입"/>
				<input type="button" class="joinBtn" value="취소" onclick="location.href='/home/index.jsp';">
			</div>			
			</form>
		</article>
	</section>

<%@ include file="/WEB-INF/include/footer.jsp" %>

