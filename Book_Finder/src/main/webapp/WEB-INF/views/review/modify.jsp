<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../00_header.jsp"></jsp:include>
<jsp:include page="../01_nav.jsp"></jsp:include>
<div class="container">
	<h2>제품 상세 정보</h2>
	<form action="/review/modify" method="post" enctype="multipart/form-data">
		<table class="table table-bordered">
			<tr>
				<th>등록번호</th>
				<td><input type="text" name="rvno" value="${rvvo.rvno }" readonly class="form-control"></td>
			</tr>
			<tr>
				<th>리뷰 제목</th>
				<td><input type="text" name="rvtitle" value="${rvvo.rvtitle }" class="form-control"></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="rvwriter" value="${rvvo.rvwriter }" readonly class="form-control"></td>
			</tr>
			<tr>
				<th>최종수정일</th>
				<td>${rvvo.modd8 }</td>
			</tr>
			<tr>
				<th>리뷰 내용</th>
				<td><textarea rows="5" name="rvcontent" class="form-control">${rvvo.rvcontent }</textarea></td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit" class="btn btn-primary">수정완료</button>
					<button type="button" class="btn btn-outline-danger" id="rmBtn">삭제</button>
				</td>
			</tr>
		</table>
	</form>
</div>
<form action="/review/remove" method="post" id="rmForm">
	<input type="hidden" name="rvno" value="${rvvo.rvno }"> <input type="hidden" name="pageNum" value="${cri.pageNum }"> <input type="hidden" name="amount" value="${cri.amount }">
</form>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(function()
	{
		$(document).on("click", "#rmBtn", function()
		{
			$("#rmForm").submit();
		});
		
	});
	let result = '<c:out value="${result}" />';
	if(result == 'modify_ok')
	{
		alert("게시물 수정이 완료되었습니다~!");
	}
	if(result == 'remove_ok')
	{
		alert("게시물 삭제가 완료되었습니다~!");
	}
	result = "";
</script>
<jsp:include page="../99_footer.jsp"></jsp:include>