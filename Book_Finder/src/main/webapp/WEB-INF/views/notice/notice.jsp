<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../00_header.jsp"></jsp:include>
<jsp:include page="../01_nav.jsp"></jsp:include>

<!-- 페이지 내용 시작 -->
	<!-- 페이지 제목 시작 -->
	<div class="container text-center text-white bg-dark py-3">
		<h1>공지사항</h1>
	</div>
	<!-- 페이지 제목 끝 -->
	<br>
	<div class="container text-center bg-dark py-3">
		<div class="container bg-white py-3">
			<table class="table">
				<colgroup>
					<col width="10%" />
					<col width="*" />
					<col width="20%" />
				</colgroup>
				<thead class="thead">
					<tr class="table-secondary">
						<th scope="col">번호</th>
						<th scope="col">제목</th>
						<th scope="col">날짜</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>n_title</td>
						<td>n_modd8</td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>n_title</td>
						<td>n_modd8</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>n_title</td>
						<td>n_modd8</td>
					</tr>
					<tr>
						<th scope="row">4</th>
						<td>n_title</td>
						<td>n_modd8</td>
					</tr>
					<tr>
						<th scope="row">5</th>
						<td>n_title</td>
						<td>n_modd8</td>
					</tr>
					<tr>
						<th scope="row">6</th>
						<td>n_title</td>
						<td>n_modd8</td>
					</tr>
					<tr>
						<th scope="row">7</th>
						<td>n_title</td>
						<td>n_modd8</td>
					</tr>
					<tr>
						<th scope="row">8</th>
						<td>n_title</td>
						<td>n_modd8</td>
					</tr>
					<tr>
						<th scope="row">9</th>
						<td>n_title</td>
						<td>n_modd8</td>
					</tr>
					<tr>
						<th scope="row">10</th>
						<td>n_title</td>
						<td>n_modd8</td>
					</tr>
				</tbody>
			</table>
			<br>
			<!-- 페이지네이션 시작 -->
			<nav aria-label="Pagination">
				<ul class="pagination justify-content-center">
					<li class="page-item"><a class="page-link" href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span></a></li>
					<li class="page-item active" aria-current="page"><a class="page-link" href="#">1<span class="sr-only"></span></a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span></a></li>
				</ul>
			</nav>
			<!-- 페이지네이션 끝 -->
			<br>
		</div>
	</div>
	<!-- 페이지 내용 끝 -->

<jsp:include page="../99_footer.jsp"></jsp:include>