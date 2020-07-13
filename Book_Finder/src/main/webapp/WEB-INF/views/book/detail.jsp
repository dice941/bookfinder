<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../00_header.jsp"></jsp:include>
<jsp:include page="../01_nav.jsp"></jsp:include>
<!-- 페이지 내용 시작 -->
<div class="container bg-secondary py-3 px-3">
	<div class="container mb-3">
		<h4>도서 상세 정보</h4>
	</div>
</div>
<div class="container bg-secondary py-3 px-3">
	<div class="container">
		<h1 class="display-1">${bvo.btitle }</h1>
		<div class="row">
			<div class="col-6">
				<img src="https://via.placeholder.com/400x400" alt="이미지가 없습니다.">
			</div>
			<div class="col-6 row mt-5">
				<div class="col-5">
					<h1>
						<label><b>저자</b></label>
					</h1>
				</div>
				<div class="col-7">
					<label>${bvo.writer }</label>
				</div>
				<br>
				<div class="col-5">
					<h1>
						<label><b>출판사</b></label>
					</h1>
				</div>
				<div class="col-7">
					<label>${bvo.publisher }</label>
				</div>
				<div class="col-5">
					<h1>
						<label><b>금액</b></label>
					</h1>
				</div>
				<div class="col-7">
					<label>${bvo.price }</label>
				</div>
			</div>
		</div>
		<div class="row py-5">
			<div class="col-3 text-center my-5 py-5">
				<h1>책소개</h1>
			</div>
			<div class="col-9">${bvo.content }</div>

			<div class="col-3 text-center my-5 py-5">
				<h1>저자소개</h1>
			</div>
			<div class="col-9">
				<div class="mb-3">
					<div class="row no-gutters">
						<div class="col-md-2">
							<a href="#"><img src="https://via.placeholder.com/150x150" class="card-img" alt="이미지가 없습니다."></a>
						</div>
						<div class="col-md-10">
							<div class="card-body">
								<a href="#"><h5 class="card-title">${bvo.writer }</h5></a>
								<p class="card-text">b_writer_content</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-3 text-center my-5 py-5">
				<h1>출판사 소개</h1>
			</div>
			<div class="col-9">
				<div class="mb-3">
					<div class="row no-gutters">
						<div class="col-md-2">
							<a href="#"><img src="https://via.placeholder.com/150x150" class="card-img" alt="이미지가 없습니다."></a>
						</div>
						<div class="col-md-10">
							<div class="card-body">
								<a href="#"><h5 class="card-title">${bvo.publisher }</h5></a>
								<p class="card-text">b_publisher_content</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div align="right" class="form-group py-3">
			<div class="col-5">
				<a href="/book/modify?bno=${bvo.bno }&pageNum=${cri.pageNum }&amount=${cri.amount }" class="btn btn-outline-warning">수정</a> <a href="/book/list?pageNum=${cri.pageNum }&amount=${cri.amount }" class="btn btn-outline-secondary">목록</a>
			</div>
		</div>
	</div>
</div>

<form action="/review/remove" method="post" id="rmForm">
	<input type="hidden" name="rvno" value="${rvvo.rvno }"> <input type="hidden" name="pageNum" value="${cri.pageNum }"> <input type="hidden" name="amount" value="${cri.amount }">
</form>
<!-- 페이지 내용 끝 -->
<script>
	let result = '<c:out value="${result }"/>';
	if(result == 'modify_ok')
	{
		alert("리뷰수정이 완료되었습니다.~!");
	}
	result = "";
</script>
<jsp:include page="../99_footer.jsp"></jsp:include>