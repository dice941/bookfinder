<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="./00_header.jsp"></jsp:include>
<jsp:include page="./01_nav.jsp"></jsp:include>

<!-- 페이지 내용 시작 -->
<div class="container bg-secondary py-3">
	<div class="container py-3 row mx-auto">
		<div class="container mb-5">
			<h1>Custom Logout Page</h1>

		</div>
		<form method="post" action="/logout">
			<div class="form-group row">
				<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
				<button type="submit" class="btn btn-info">로그아웃</button>
			</div>
		</form>
	</div>
</div>

<!-- 페이지 내용 끝 -->

<jsp:include page="./99_footer.jsp"></jsp:include>
