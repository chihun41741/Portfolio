<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/include/header.jsp"%>

<section class="sale_insert_section">
	<div class="container">
		<form method="post" action="sale_insert_ok.do" enctype="multipart/form-data">	
				<div class="form-group"> 
					<label>작성자</label>	<input type="text" class="form-control"  name="writer" value=<%=userid%> readonly="readonly">
				</div>
				
				<div class="form-group">
					<label>지역</label><input type="text" class="form-control" name="loc" placeholder="지역">
				</div>
				
				
				<div class="form-group">
					<label class="checkbox-inline">
						<input type="checkbox" class="form-control" value="1" name="leasetype" >월세
					</label>
					
					<label class="checkbox-inline">
						<input type="checkbox" class="form-control" value="2" name="leasetype" >전세
					</label>
					
					<label class="checkbox-inline">
						<input type="checkbox" class="form-control" value="3"  name="leasetype" >반전세
					</label>
				</div>
				
			
				<div class="form-group">
					<label class="checkbox-inline">
						<input type="checkbox" class="form-control"  value="1" name="roomtype">원룸
					</label>
					
					<label class="checkbox-inline">
						<input type="checkbox" class="form-control" value="2" name="roomtype">투룸
					</label>
					
					<label class="checkbox-inline">
						<input type="checkbox" class="form-control" value="3"  name="roomtype">오피스텔
					</label>
				</div>
				
				<div class="form-group">
					<label>월세금액</label><input type="number" class="form-control" name="monthlyrent" placeholder="월세">
				</div>
				
				<div class="form-group">
					<label>보증금/전세금액</label><input type="number" class="form-control" name="deposit" placeholder="보증금/전세">
				</div>
				
				<div class="form-group">
					<label>최소 입주 가능 일자</label><input type="date" class="form-control"  name="startdate" placeholder="최소 입주 가능 일자">
				</div>
	
				<div class="form-group">
					<label>최대 거주 가능 일자</label><input type="date" class="form-control" name="duedate" placeholder="최대 거주 가능 일자">
				</div>
				
				<div class="form-group">
					<label>코멘트</label>
					<textarea rows="7" cols="7" class="form-control" name="comment"></textarea>
				</div>
				
				<div class="form-group">
					<label>파일 업로드</label>
					 <input type="file" id="image" name="image" class="form-control">
					 <input type="hidden" id="filename" name="filename">
				</div>
				
				<button type="submit" class="btn btn-default">등록</button>
				<button type="reset" class="btn btn-warning">취소</button>	
		</form>
	</div>
</section>

<%@ include file="/WEB-INF/include/footer.jsp"%>
