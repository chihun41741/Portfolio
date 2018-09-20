<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/include/header.jsp"%>
	
	<section class="sale_list_section">
		<div class="container">
			<table class="w3-table w3-border">
				<tr class="w3-border w3-hoverable">
					<th>글번호</th>
					<th>작성자</th>
					<th>상세보기</th>
				</tr>
				<c:choose>
					<c:when test="${empty plist}">
						<tr>
							<td colspan=3>조회된 데이터가 없음</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="vo" items="${plist}">
							<tr>
								<td>${vo.saleno}</td>
								<td>${vo.writer}</td>
								<td><a href="sale_list_detail.do?saleno=${vo.saleno}">상세보기</a></td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</table>
		</div>
	</section>
<%@ include file="/WEB-INF/include/footer.jsp"%>