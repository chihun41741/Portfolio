
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/include/header.jsp"%>
<script>
	$(document).ready(function() {
		$("#join-btn").click(function() {
			if ($("#password").val() != $("#re_password").val()) {
				alert("비밀번호 확인이 일치하지 않습니다.")
				$("#password").val("")
				$("#re_password").val("")
				return false
			} else {
				$("form").submit()
			}
		})

		$("#del-btn").click(function() {
			alert("정말로 삭제 하시겠습니까?")
			$("form").submit()
			return true
		})
	})
</script>
<section class="user_delete_section">
	<%
		request.setCharacterEncoding("utf-8");

		if (userid != null) {
	%>
	<div class="container">
		<article>
			<h2 class="insert_h2">회원정보 삭제</h2>
				<form method="post" action="user_delete_ok.do?userid=${vo.userid}" class="form">
					<div class="form-group">
						<label>비밀번호</label><input type="password" name="password" id="password" class="form-control">
					</div>
					<input type="button" class="btn" id="del-btn" value="회원 삭제" />
					<input type="button" class="btn" value="취소" onclick="location.href='/home/index.jsp';">
				</form>
		</article>
	</div>
	<%
		}
	%>

</section>
<%@ include file="/WEB-INF/include/footer.jsp"%>