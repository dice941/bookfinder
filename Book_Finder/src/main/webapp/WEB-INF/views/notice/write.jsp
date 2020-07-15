<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../00_header.jsp"></jsp:include>
<jsp:include page="../01_nav.jsp"></jsp:include>

<!-- 페이지 내용 시작 -->
<div class="container bg-secondary py-3">
	<!-- 	<div class="container mb-3">
		<h1 class="display-4">책 리뷰</h1>
	</div> -->
	<h2>공지사항 작성</h2>
	<form action="/notice/write" method="post"enctype="multipart/form-data">
		<div class="form-group">
			<label for="title">공지사항 제목 : </label> <input type="text" class="form-control" placeholder="공지사항 제목을 입력해주세요" id="title" name="title">
		</div>
		<div class="form-group">
			<label for="writer">작성자 : </label> <input type="text" class="form-control" placeholder="관리자 번호를 입력해주세요" id="writer" name="writer">
		</div>
		<div class="form-group">
			<label for="content">content : </label>
			<textarea class="form-control" rows="5" id="content" name="content"></textarea>
		</div>
		<div class="form-group">
			<label for="file">파일 첨부 : </label> <input type="file" class="form-control-file border" id="imgfile" name="imgfile">
		</div>
		<button type="submit" class="btn btn-primary">등록</button>
	</form>
</div>

<!-- 페이지 내용 끝 -->
<jsp:include page="../99_footer.jsp"></jsp:include>