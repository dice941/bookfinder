<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../00_header.jsp"></jsp:include>
<jsp:include page="../01_nav.jsp"></jsp:include>

<!-- 페이지 내용 시작 -->
<!-- 페이지 제목 시작 -->
<div class="container text-center text-white bg-dark py-3">
	<h1>서점 찾기</h1>
</div>
<!-- 페이지 제목 끝 -->
<br>
<br>
<div class="container text-center bg-dark py-3">
	<div class="container bg-white py-3">
		<div id="map" style="width: 500px; height: 400px;"></div>
	</div>
</div>
<!-- 페이지 내용 끝 -->
지도 api관련 내용은 추후 작석예정

<jsp:include page="../99_footer.jsp"></jsp:include>