<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../00_header.jsp"></jsp:include>
<jsp:include page="../01_nav.jsp"></jsp:include>

<!-- 페이지 내용 시작 -->
<!-- 페이지 제목시작 -->
<div class="container bg-dark text-white text-center">
	<h1>독후감</h1>
</div>
<!-- 페이지 제목 끝 -->
<br>
<!-- 리뷰 리스트 시작 -->
<div class="container mb-3 bg-dark">
	<br>
	<div class="container bg-white">
		<br>
		<div class="mx-3 row bg-secondary text-center">
			<div class="col-2">이미지</div>
			<div class="col-4">책 이름</div>
			<div class="col-2">작가</div>
			<div class="col-2">출판사</div>
			<div class="col-2">가격</div>
		</div>
		<br>
		<div class="mx-3 py-3 row text-center">
			<div class="col-2">
				<a href="#"><img src="https://via.placeholder.com/100x100" class="card-img" alt="이미지가 없습니다."></a>
			</div>
			<div class="col-4">
				<a href="#">b_title</a>
			</div>
			<div class="col-2">b_writer</div>
			<div class="col-2">b_publisher</div>
			<div class="col-2">b_price</div>
		</div>
		<div class="mx-3 py-3 bg-dark row text-center">
			<div class="col-2">
				<a href="#"><img src="https://via.placeholder.com/100x100" class="card-img" alt="이미지가 없습니다."></a>
			</div>
			<div class="col-4">
				<a href="#">b_title</a>
			</div>
			<div class="col-2">b_writer</div>
			<div class="col-2">b_publisher</div>
			<div class="col-2">b_price</div>
		</div>
		<div class="mx-3 py-3 row text-center">
			<div class="col-2">
				<a href="#"><img src="https://via.placeholder.com/100x100" class="card-img" alt="이미지가 없습니다."></a>
			</div>
			<div class="col-4">
				<a href="#">b_title</a>
			</div>
			<div class="col-2">b_writer</div>
			<div class="col-2">b_publisher</div>
			<div class="col-2">b_price</div>
		</div>
		<div class="mx-3 py-3 bg-dark row text-center">
			<div class="col-2">
				<a href="#"><img src="https://via.placeholder.com/100x100" class="card-img" alt="이미지가 없습니다."></a>
			</div>
			<div class="col-4">
				<a href="#">b_title</a>
			</div>
			<div class="col-2">b_writer</div>
			<div class="col-2">b_publisher</div>
			<div class="col-2">b_price</div>
		</div>
		<div class="mx-3 py-3 row text-center">
			<div class="col-2">
				<a href="#"><img src="https://via.placeholder.com/100x100" class="card-img" alt="이미지가 없습니다."></a>
			</div>
			<div class="col-4">
				<a href="#">b_title</a>
			</div>
			<div class="col-2">b_writer</div>
			<div class="col-2">b_publisher</div>
			<div class="col-2">b_price</div>
		</div>
		<div class="mx-3 py-3 bg-dark row text-center">
			<div class="col-2">
				<a href="#"><img src="https://via.placeholder.com/100x100" class="card-img" alt="이미지가 없습니다."></a>
			</div>
			<div class="col-4">
				<a href="#">b_title</a>
			</div>
			<div class="col-2">b_writer</div>
			<div class="col-2">b_publisher</div>
			<div class="col-2">b_price</div>
		</div>
		<div class="mx-3 py-3 row text-center">
			<div class="col-2">
				<a href="#"><img src="https://via.placeholder.com/100x100" class="card-img" alt="이미지가 없습니다."></a>
			</div>
			<div class="col-4">
				<a href="#">b_title</a>
			</div>
			<div class="col-2">b_writer</div>
			<div class="col-2">b_publisher</div>
			<div class="col-2">b_price</div>
		</div>
		<div class="mx-3 py-3 bg-dark row text-center">
			<div class="col-2">
				<a href="#"><img src="https://via.placeholder.com/100x100" class="card-img" alt="이미지가 없습니다."></a>
			</div>
			<div class="col-4">
				<a href="#">b_title</a>
			</div>
			<div class="col-2">b_writer</div>
			<div class="col-2">b_publisher</div>
			<div class="col-2">b_price</div>
		</div>
		<div class="mx-3 py-3 row text-center">
			<div class="col-2">
				<a href="#"><img src="https://via.placeholder.com/100x100" class="card-img" alt="이미지가 없습니다."></a>
			</div>
			<div class="col-4">
				<a href="#">b_title</a>
			</div>
			<div class="col-2">b_writer</div>
			<div class="col-2">b_publisher</div>
			<div class="col-2">b_price</div>
		</div>
		<div class="mx-3 py-3 bg-dark row text-center">
			<div class="col-2">
				<a href="#"><img src="https://via.placeholder.com/100x100" class="card-img" alt="이미지가 없습니다."></a>
			</div>
			<div class="col-4">
				<a href="#">b_title</a>
			</div>
			<div class="col-2">b_writer</div>
			<div class="col-2">b_publisher</div>
			<div class="col-2">b_price</div>
		</div>
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
	<br>
</div>
<!-- 리뷰 리스트 끝 -->

<!-- 페이지 내용 끝 -->

<jsp:include page="../99_footer.jsp"></jsp:include>