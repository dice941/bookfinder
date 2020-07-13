<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../00_header.jsp"></jsp:include>
<jsp:include page="../01_nav.jsp"></jsp:include>
<h2>책내용 쓰기</h2>
<form method="post" enctype="multipart/form-data">
	<div class="form-group">
		<label for="btitle">책 이름 : </label> <input type="text" class="form-control" placeholder="제목" id="btitle" name="btitle">
	</div>
	<div class="form-group">
		<label for="writer">저자 : </label> <input type="text" class="form-control" placeholder="작성자" id="writer" name="writer">
	</div>
	
	<div class="form-group">
		<label for="publisher">출판사 : </label> <input type="text" class="form-control" placeholder="출판사" id="publisher" name="publisher">
	</div>
	<div class="form-group">
		<label for="price">금액 : </label> <input type="text" class="form-control" placeholder="금액" id="price" name="price">
	</div>
	<div class="form-group">
		<label for="content">책 소개 내용 : </label>
		<textarea class="form-control" rows="5" id="content" name="content"></textarea>
	</div>
	<div class="form-group">
		<label for="file">파일 첨부 : </label> <input type="file" class="form-control-file border" id="bimgfile" name="bimgfile">
	</div>
	<button type="submit" class="btn btn-primary">등록</button>
</form>

<jsp:include page="../99_footer.jsp"></jsp:include>