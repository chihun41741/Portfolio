<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");  %>

<section>
	<article>
		<h2 class="insert_h2">회원가입</h2>
		<form method="post" action="client_insert_ok.do">
			<div class="container">
				<div class="form-group">
					<label>아이디</label><input type="text" name="id" class="form-control"placeholder="아이디를 입력하새요">
				</div>
				<div class="form-group">
					<label>비밀번호</label><input type="password" name="password"class="form-control" placeholder="비밀번호를 입력히세요">
				</div>
				<div class="form-group">
					<label>비밀번호확인</label><input type="password" name="re_password"class="form-control" placeholder="비밀번호를 입력히세요">
				</div>
				<div class="form-group">
					<label>이름</label><input type="text" name="name" class="form-control" placeholder="이름을 입력하세요">
				</div>
				<div class="form-group">
					<label>핸드폰</label><input type="text" name="tel"class="form-control" placeholder="010-XXXX-XXXX">
				</div>
				<div class="form-group">
					<label>주소</label><input type="text" name="addr"class="form-control" placeholder="주소를 입력하세요">
				</div>
				<div class="form-group">
					<label>이메일</label><input type="email" name="email"class="form-control" placeholder="XXXXXXX@XXXXX.XXX">
				</div>
				<div class="form-group">
				<button type="submit" class="btn-info">가입하기</button>
				<button type="reset" class="btn-danger">취소</button>
				</div>
			</div>
		</form>
	</article>
</section>