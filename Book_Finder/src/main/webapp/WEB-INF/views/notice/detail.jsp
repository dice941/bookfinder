<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../00_header.jsp"></jsp:include>
<jsp:include page="../01_nav.jsp"></jsp:include>

<!-- 페이지 내용 시작 -->
<div class="container bg-info py-3">
	<div class="container mb-3">
		<h3>공지사항 상세보기</h3>
	</div>
	<div class="table">
		<table class="table table-bordered">
			<tr>
				<th width="150" class="text-center">제목</th>
				<td>${nvo.title }</td>
			</tr>
			<tr>
				<th width="150" class="text-center">날짜</th>
				<td>${nvo.modd8 }</td>
			</tr>
			<tr>
				<th width="150" height="300" class="text-center">내용</th>
				<td>${nvo.content }</td>
			</tr>
		</table>
	</div>

	<div align="right" class="form-group py-3">
		<div class="col-5">
			<a href="/notice/modify?nno=${rvvo.rvno }&pageNum=${cri.pageNum }&amount=${cri.amount }" class="btn btn-outline-warning">수정</a> <a href="/notice/list?pageNum=${cri.pageNum }&amount=${cri.amount }" class="btn btn-outline-secondary">목록</a>
		</div>
	</div>
</div>

<!-- 페이지 내용 끝 -->

<jsp:include page="../99_footer.jsp"></jsp:include>