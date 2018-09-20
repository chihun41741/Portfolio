<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ include file="/WEB-INF/include/header.jsp"%>
<script>

$(document).ready(function(){
	
	$("#delete").click(function(){
		
		let saleno = $("#purchaseno").val()
		if(confirm("정말로 삭제할까요?")){
			location.href="/home/purchase_delete.do?purchaseno="+purchaseno
					}		
	})
})

</script>	
<section>
	<article>
		<h2 class="insert_h2">상세보기</h2>
		<form method="post" action="purchase_list_update_ok.do">
			<input type="hidden" name="purchaseno" value="${vo.purchaseno}">
 			<div class="form-group"> 
					<label>작성자</label>	<input type="text" class="form-control" name="writer" value="${vo.writer}" readonly="readonly">
				</div>
				
				<div class="form-group">
					<label>지역</label><input type="text" class="form-control" name="loc" value="${vo.loc}">
				</div>
				
				<div class="form-group">
					<label class="checkbox-inline">세 종류
						<input type="checkbox" class="form-control" value="1" name="leasetype" 
						<c:if test="${vo.leasetype==1}"> checked = "checked"</c:if>>
						월세
					</label>
					
					<label class="checkbox-inline">
						<input type="checkbox" class="form-control" value="2" name="leasetype" 
						<c:if test="${vo.leasetype==2}"> checked = "checked"</c:if>>
						전세
					</label>
					
					<label class="checkbox-inline">
						<input type="checkbox" class="form-control" value="3"  name="leasetype" 
						<c:if test="${vo.leasetype==3}"> checked = "checked"</c:if>>
						반전세
					</label>
				</div>
				
				<div class="form-group">
					<label class="checkbox-inline">방종류
						<input type="checkbox" class="form-control"  value="1" name="roomtype" 
						<c:if test="${vo.roomtype==1}">checked="checked"</c:if>>
						원룸
					</label>
					
					<label class="checkbox-inline">
						<input type="checkbox" class="form-control" value="2" name="roomtype" 
						<c:if test="${vo.roomtype==2}">checked="checked"</c:if>>
						원룸
					</label>
					
					<label class="checkbox-inline">
						<input type="checkbox" class="form-control" value="3"  name="roomtype" 
						<c:if test="${vo.roomtype==3}">checked="checked"</c:if>>
						원룸
					</label>
				</div>
				
				<div class="form-group">
					<label>월세금액</label><input type="number" class="form-control" name="monthlyrent" value="${vo.monthlyrent}">
				</div>
				
				<div class="form-group">
					<label>보증금/전세금액</label><input type="number" class="form-control" name="deposit" value="${vo.deposit}">
				</div>
				
				<div class="form-group">
					<label>최대 거주 가능 일자</label><input type="text" class="form-control" name="duration" value="${vo.duration}">
				</div>
				
				<div class="form-group">
					<label>코멘트</label>
					<textarea rows="7" cols="7" class="form-control" name="comment">${vo.comment}</textarea>
				</div>
				
				
				<div class="w3-row">
					<input type="submit" value="수정"/>
					<%-- <input type="button" value="삭제" onclick="location.href='purchase_delete.do?purchaseno=${vo.purchaseno}';"> --%>
					<input type="button" value="삭제"id="delete">
				</div>
		</form>
	</article>

</section>
<%@ include file="/WEB-INF/include/footer.jsp"%>