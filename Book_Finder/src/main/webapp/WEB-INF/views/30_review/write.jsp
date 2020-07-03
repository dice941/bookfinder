<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../00_header.jsp"></jsp:include>
<jsp:include page="../01_nav.jsp"></jsp:include>

<!-- 페이지 내용 시작 -->
<div class="container bg-secondary py-3">
	<div class="container mb-3">
		<h1 class="display-4">책 리뷰</h1>
	</div>
	<div class="container py-3">
		<div class="input-group">
			<div class="input-group-prepend">
				<span class="input-group-text">내용 쓰기</span>
			</div>
			<textarea class="form-control" rows="15"></textarea>
		</div>
	</div>
	<div align="right" class="form-group py-3">
		<div class="col-5">
			<button type="submit" class="btn btn-primary btn-lg">작성완료</button>
			<button type="submit" class="btn btn-danger btn-lg" onclick="location.href='40_review.html'">취소하기</button>
		</div>

	</div>
</div>

<!-- 페이지 내용 끝 -->

<jsp:include page="../99_footer.jsp"></jsp:include>