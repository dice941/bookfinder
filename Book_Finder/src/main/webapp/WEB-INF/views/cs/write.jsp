<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../00_header.jsp"></jsp:include>
<jsp:include page="../01_nav.jsp"></jsp:include>

<!-- 페이지 내용 시작 -->
<!-- 페이지 제목 시작 -->
<div class="container text-center text-white bg-dark py-3">
	<h1>고객센터</h1>
</div>
<!-- 페이지 제목 끝 -->
<div class="container bg-secondary py-3">

	<div class="input-group input-group-lg">
		<div class="input-group-prepend">
			<span class="input-group-text">제목</span>
		</div>
		<input type="text" class="form-control" id="cstitle" placeholder="제목을 입력해주세요.">
	</div>

	<div class="input-group input-group-lg">
		<div class="input-group-prepend">
			<span class="input-group-text">내용</span>
		</div>
		<textarea class="form-control" id="cscontent"></textarea>
	</div>

	<div class="input-group">
		<div class="input-group-prepend">
			<span class="input-group-text">아이디</span>
		</div>
		<input type="text" class="form-control" id="csid" placeholder="아이디를 입력해주세요.">
	</div>

	<div class="input-group input-group-sm mb-4">
		<div class="input-group-prepend">
			<span class="input-group-text">비밀번호</span>
		</div>
		<input type="password" class="form-control" id="cspw" placeholder="비밀번호를 입력해주세요.">
	</div>

	<div align="right" class="form-group">
		<div class="col-5">
			<button type="submit" class="btn btn-primary btn-lg">작성완료</button>
			<button type="submit" class="btn btn-danger btn-lg" onclick="location.href='70_cscenter.html'">취소하기</button>
		</div>

	</div>

</div>
<!-- 페이지 내용 끝 -->

<jsp:include page="../99_footer.jsp"></jsp:include>