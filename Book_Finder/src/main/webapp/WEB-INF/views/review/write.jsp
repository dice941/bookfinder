<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../00_header.jsp"></jsp:include>
<jsp:include page="../01_nav.jsp"></jsp:include>

<!-- 페이지 내용 시작 -->
<div class="container bg-secondary py-3">
	<!-- 	<div class="container mb-3">
		<h1 class="display-4">책 리뷰</h1>
	</div> -->
	<h2>리뷰 작성</h2>
	<form method="post">
		<div class="form-group">
			<label for="rvtitle">title : </label> 
			<input type="text" class="form-control" placeholder="리뷰 제목을 입력해주세요" id="rvtitle" name="rvtitle">
		</div>
		<div class="form-group">
			<label for="rvwriter">writer : </label> <input type="text" class="form-control" placeholder="닉네임을 입력해주세요" id="rvwriter" name="rvwriter">
		</div>
		<div class="form-group">
			<label for="rvcontent">content : </label>
			<textarea class="form-control" rows="5" id="rvcontent" name="rvcontent"></textarea>
		</div>
		<button type="submit" class="btn btn-primary">등록</button>
	</form>
</div>

<!-- 페이지 내용 끝 -->

<jsp:include page="../99_footer.jsp"></jsp:include>