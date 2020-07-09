<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../00_header.jsp"></jsp:include>
<jsp:include page="../01_nav.jsp"></jsp:include>

<!-- 페이지 내용 시작 -->
<div class="container bg-secondary py-3">
	<div class="container mb-3">
		<h1 class="display-4">공지사항</h1>
	</div>
	<div class="table">
		<table class="table table-bordered">
			<tr>
				<th width="150" class="text-center">제목</th>
				<td>n_title</td>
			</tr>
			<tr>
				<th width="150" class="text-center">날짜</th>
				<td>n_modd8</td>
			</tr>
		</table>
	</div>
	<div class="container py-3">
		n_content 책의 내용이 들어가는 자리입니다.<br> <br> <br> <br> <br> <br> <br>
	</div>
	<div align="right" class="form-group py-3">
		<div class="col-5">
			<button type="submit" class="btn btn-primary btn-lg">목록으로</button>
		</div>

	</div>
</div>

<!-- 페이지 내용 끝 -->

<jsp:include page="../99_footer.jsp"></jsp:include>