<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="00_header.jsp"></jsp:include>
<jsp:include page="01_nav.jsp"></jsp:include>

<!-- 이미지 컨테이너 시작 -->
<div class="container-fluid bg-dark ">
	<!-- 홈 화면 사진 슬라이드 기능 -->
	<div id="home_img_slide" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ul class="carousel-indicators">
			<li data-target="home_img_slide" data-slide-to="0" class="active"></li>
			<li data-target="home_img_slide" data-slide-to="1"></li>
			<li data-target="home_img_slide" data-slide-to="2"></li>
		</ul>

		<!-- The slideshow -->
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="/resources/img/img_home1.jpg" alt="img_home1">
			</div>
			<div class="carousel-item">
				<img src="/resources/img/img_home2.jpg" alt="img_home2">
			</div>
			<div class="carousel-item">
				<img src="/resources/img/img_home3.jpg" alt="img_home3">
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="carousel-control-prev" href="#home_img_slide" data-slide="prev"> <span class="carousel-control-prev-icon"></span></a> <a class="carousel-control-next" href="#home_img_slide" data-slide="next"> <span class="carousel-control-next-icon"></span></a>
	</div>
	<br>
</div>
<!-- 이미지 컨테이너 끝 -->

<!-- 본문 시작 -->
<!-- 리뷰 구간 시작 -->
<div class="container bg-secondary mt-5">
	<h1>New Review</h1>
	<div class="card mb-3">
		<div class="row no-gutters">
			<div class="col-md-2">
				<a href="#"><img src="https://via.placeholder.com/150x150" class="card-img" alt="이미지가 없습니다."></a>
			</div>
			<div class="col-md-10">
				<div class="card-body">
					<h5 class="card-title">
						<a href="#">review title</a>
					</h5>
					<p class="card-text">review content</p>
					<p class="card-text">
						<small class="text-muted">review writer</small><small class="text-muted"> - Last updated 3 mins ago</small>
					</p>
				</div>
			</div>
		</div>
	</div>
	<div class="card mb-3">
		<div class="row no-gutters">
			<div class="col-md-2">
				<a href="#"><img src="https://via.placeholder.com/150x150" class="card-img" alt="이미지가 없습니다."></a>
			</div>
			<div class="col-md-10">
				<div class="card-body">
					<h5 class="card-title">
						<a href="#">review title</a>
					</h5>
					<p class="card-text">review content</p>
					<p class="card-text">
						<small class="text-muted">review writer</small><small class="text-muted"> - Last updated 3 mins ago</small>
					</p>
				</div>
			</div>
		</div>
	</div>
	<div class="card mb-3">
		<div class="row no-gutters">
			<div class="col-md-2">
				<a href="#"><img src="https://via.placeholder.com/150x150" class="card-img" alt="이미지가 없습니다."></a>
			</div>
			<div class="col-md-10">
				<div class="card-body">
					<h5 class="card-title">
						<a href="#">review title</a>
					</h5>
					<p class="card-text">review content</p>
					<p class="card-text">
						<small class="text-muted">review writer</small><small class="text-muted"> - Last updated 3 mins ago</small>
					</p>
				</div>
			</div>
		</div>
	</div>
	<nav aria-label="Pagination">
		<ul class="pagination justify-content-center">
			<li class="page-item"><a class="page-link" href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span></a></li>
			<li class="page-item active" aria-current="page"><a class="page-link" href="#">1<span class="sr-only"></span></a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span></a></li>
		</ul>
	</nav>
	<br>
</div>
<!-- 리뷰 구간 끝 -->
<br>
<!-- 베스트셀러 및 신간책구간 -->
<div class="container bg-secondary">
	<div class="row">
		<div class="col-md-6 justify-content-start">
			<h3>Best Seller</h3>
			<div class="card my-3">
				<div class="row no-gutters">
					<div class="col-md-3">
						<a href="#"><img src="https://via.placeholder.com/100x100" class="card-img" alt="이미지가 없습니다."></a>
					</div>
					<div class="col-md-9">
						<div class="card-body">
							<h5 class="card-title">
								<a href="#">book title</a>
							</h5>
							<p class="card-text">publisher</p>
						</div>
					</div>
				</div>
			</div>
			<div class="card mb-3">
				<div class="row no-gutters">
					<div class="col-md-3">
						<a href="#"><img src="https://via.placeholder.com/100x100" class="card-img" alt="이미지가 없습니다."></a>
					</div>
					<div class="col-md-9">
						<div class="card-body">
							<h5 class="card-title">
								<a href="#">book title</a>
							</h5>
							<p class="card-text">publisher</p>
						</div>
					</div>
				</div>
			</div>
			<div class="card mb-3">
				<div class="row no-gutters">
					<div class="col-md-3">
						<a href="#"><img src="https://via.placeholder.com/100x100" class="card-img" alt="이미지가 없습니다."></a>
					</div>
					<div class="col-md-9">
						<div class="card-body">
							<h5 class="card-title">
								<a href="#">book title</a>
							</h5>
							<p class="card-text">publisher</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 구간 나누기 추가 -->
		<div class="col-md-6 justify-content-end">
			<h3>New Book</h3>
			<div class="card my-3">
				<div class="row no-gutters">
					<div class="col-md-3">
						<a href="#"><img src="https://via.placeholder.com/100x100" class="card-img" alt="이미지가 없습니다."></a>
					</div>
					<div class="col-md-9">
						<div class="card-body">
							<h5 class="card-title">
								<a href="#">book title</a>
							</h5>
							<p class="card-text">publisher</p>
						</div>
					</div>
				</div>
			</div>
			<div class="card mb-3">
				<div class="row no-gutters">
					<div class="col-md-3">
						<a href="#"><img src="https://via.placeholder.com/100x100" class="card-img" alt="이미지가 없습니다."></a>
					</div>
					<div class="col-md-9">
						<div class="card-body">
							<h5 class="card-title">
								<a href="#">book title</a>
							</h5>
							<p class="card-text">publisher</p>
						</div>
					</div>
				</div>
			</div>
			<div class="card mb-3">
				<div class="row no-gutters">
					<div class="col-md-3">
						<a href="#"><img src="https://via.placeholder.com/100x100" class="card-img" alt="이미지가 없습니다."></a>
					</div>
					<div class="col-md-9">
						<div class="card-body">
							<h5 class="card-title">
								<a href="#">book title</a>
							</h5>
							<p class="card-text">publisher</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
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

<!-- 베스트셀러 및 신간 구간 끝 -->
<br>
<!-- 공지 시작 -->
<div class="container bg-secondary">
	<h3>Notice</h3>
	<div class="card mb-3">
		<div class="card-header">
			<h5>notice title</h5>
		</div>
		<div class="card-body">notice content</div>
	</div>
	<div class="card mb-3">
		<div class="card-header">
			<h5>notice title</h5>
		</div>
		<div class="card-body">notice content</div>
	</div>
	<div class="card mb-3">
		<div class="card-header">
			<h5>notice title</h5>
		</div>
		<div class="card-body">notice content</div>
	</div>
	<br>
</div>

<!-- 공지 끝 -->
<!-- 본문 끝 -->
<jsp:include page="99_footer.jsp"></jsp:include>