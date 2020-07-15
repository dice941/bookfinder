<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../00_header.jsp"></jsp:include>
<jsp:include page="../01_nav.jsp"></jsp:include>

<!-- 페이지 내용 시작 -->
<!-- 페이지 제목 시작 -->
<div class="container text-center text-white bg-dark mt-5 py-3">
	<h1>고객센터</h1>
</div>
<!-- 페이지 제목 끝 -->
<div class="container bg-secondary py-3">
	<form action="/cs/write" method="post" enctype="multipart/form-data">
		<div class="form-group">
			<label for="btitle">제목 </label> <input type="text" class="form-control" placeholder="제목" id="title" name="title">
		</div>
		<div class="form-group">
			<label for="csid">아이디 </label> <input type="text" class="form-control" placeholder="작성자" id="csid" name="csid">
		</div>

		<div class="form-group">
			<label for="cspw">비밀번호</label> <input type="text" class="form-control" placeholder="출판사" id="cspw" name="cspw">
		</div>
		<div class="form-group">
			<label for="content">내용</label>
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