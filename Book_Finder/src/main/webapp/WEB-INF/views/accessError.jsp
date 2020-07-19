<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ page import="java.util.*"%>
<jsp:include page="./00_header.jsp"></jsp:include>
<jsp:include page="./01_nav.jsp"></jsp:include>

<div class="container mt-5">
	<h1>403 - 접근이 허용되지 않았습니다.</h1>

	<h2>
		<c:out value="${SPRING_SECURITY_403_EXCEPTION.getMessage()}" />
	</h2>

	<h2>
		<c:out value="${msg }" />
	</h2>
</div>



<jsp:include page="./99_footer.jsp"></jsp:include>