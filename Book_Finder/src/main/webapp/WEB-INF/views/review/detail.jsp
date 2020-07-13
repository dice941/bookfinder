<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../00_header.jsp"></jsp:include>
<jsp:include page="../01_nav.jsp"></jsp:include>
<!-- 페이지 내용 시작 -->
<div class="container bg-info py-3">
	<div class="container mb-3">
		<h4>리뷰 자세히 보기</h4>
	</div>
	<div class="table">
		<table class="table table-bordered">
			<tr>
				<th width="150" class="text-center">책이름</th>
				<td>${rvvo.rvtitle }</td>
			</tr>
			<tr>
				<th width="150" class="text-center">작성자</th>
				<td>${rvvo.rvwriter }</td>
			</tr>
			<tr>
				<th width="150" height="300" class="text-center">내용</th>
				<td>${rvvo.rvcontent }</td>
			</tr>
		</table>
	</div>

	<div align="right" class="form-group py-3">
		<div class="col-5">
			<a href="/review/modify?rvno=${rvvo.rvno }&pageNum=${cri.pageNum }&amount=${cri.amount }" class="btn btn-outline-warning">수정</a>
			<a href="/review/list?pageNum=${cri.pageNum }&amount=${cri.amount }" class="btn btn-outline-secondary">목록</a>
		</div>
	</div>
</div>
<form action="/review/remove" method="post" id="rmForm">
	<input type="hidden" name="rvno" value="${rvvo.rvno }"> <input type="hidden" name="pageNum" value="${cri.pageNum }"> <input type="hidden" name="amount" value="${cri.amount }">
</form>
<!-- 페이지 내용 끝 -->
<script>
	let result = '<c:out value="${result }"/>';
	if(result == 'modify_ok')
	{
		alert("리뷰수정이 완료되었습니다.~!");
	}
	result = "";
</script>
<jsp:include page="../99_footer.jsp"></jsp:include>