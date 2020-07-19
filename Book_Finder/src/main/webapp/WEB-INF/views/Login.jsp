<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="./00_header.jsp"></jsp:include>
<jsp:include page="./01_nav.jsp"></jsp:include>

<!-- 페이지 내용 시작 -->
<div class="container bg-secondary py-3">
	<div class="container py-3 row mx-auto">
		<div class="container mb-5">
			<h1>Login Page</h1>
			<h2>
				<c:out value="${error }"></c:out>
			</h2>
			<h2>
				<c:out value="${logout }"></c:out>
			</h2>
		</div>
		<form class="col" method="post" action="/login">
			<div class="form-group row">
				<h1>
					<label class="col-lg-3 align-middle"><b>Email</b></label>
				</h1>
				<div class="col-lg-8">
					<input type="text" class="form-control align-bottom" id="staticEmail" placeholder="아이디를 입력해주세요." name="username" value="admin">
				</div>
			</div>
			<div class="form-group row">
				<h1>
					<label class="col-lg-3"><b>PW</b></label>
				</h1>
				<div class="col-lg-8">
					<input type="password" class="form-control" id="inputPassword" placeholder="비밀번호를 입력해주세요." name="password" value="admin">
				</div>
			</div>
			<div class="form-group row">
				<button type="submit" class="btn btn-info">로그인</button>
				<button type="button" class="btn btn-success">회원가입</button>
				<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
			</div>
		</form>
		<img alt="이미지가 없습니다." src="https://via.placeholder.com/400x400" class="col">
	</div>
</div>

<!-- 페이지 내용 끝 -->

<jsp:include page="./99_footer.jsp"></jsp:include>
