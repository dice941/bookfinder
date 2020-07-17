<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../00_header.jsp"></jsp:include>
<jsp:include page="../01_nav.jsp"></jsp:include>

<!-- 페이지 내용 시작 -->
<!-- 페이지 제목 시작 -->
<div class="container bg-dark text-center text-white p-2">
	<b>월간 종합 순위<br>[YY.MM.DD - YY.MM.DD]
	</b>
</div>
<!-- 페이지 제목 끝 -->
<br>
<!-- 순위 페이지 시작-->
<div class="container bg-dark text-center text-white p-2">
	<div class="row">
		<div class="col">
			<a href="#">1 - 10</a>
		</div>
		<div class="col">
			<a href="#">11 - 20</a>
		</div>
		<div class="col">
			<a href="#">21 - 30</a>
		</div>
		<div class="col">
			<a href="#">31 - 40</a>
		</div>
		<div class="col">
			<a href="#">41 - 50</a>
		</div>
	</div>
</div>
<!-- 순위 페이지 끝-->
<br>
<!-- 순위 리스트 시작 -->
<div class="container bg-dark text-center text-white">
	<br>
	<c:choose>
		<c:when test="${list ne null && list.size() != 0 }">
			<c:forEach items="${list }" var="bvo">
				<div class="mb-3">
					<div class="row">
						<div class="col-2">
							<img src="https://via.placeholder.com/100x100" class="card-img" alt="순위 이미지가 없습니다..">
						</div>
						<div class="col-3">
							<a href="#"><img src="https://via.placeholder.com/150x150" class="card-img" alt="이미지가 없습니다."></a>
						</div>
						<div class="col-7">
							<h4 class="text-left">
								<a href="/book/detail?bno=${bvo.bno } &pageNum=${pgvo.cri.pageNum } &amount=${pgvo.cri.amount } &type=${pgvo.cri.type } &keyword=${pgvo.cri.keyword }"> ${bvo.btitle }</a>
							</h4>
							<div class="row">
								<div class="col-2 text-right">
									<p>
										작가<br> 출판사
									</p>
								</div>
								<div class="col-5 text-left">
									<p>
										${bvo.writer }<br> ${bvo.publisher }
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<h5>등록된 책이 없습니다!</h5>
		</c:otherwise>
	</c:choose>

	<div class="mb-3">
		<div class="row">
			<div class="col-2">
				<img src="https://via.placeholder.com/100x100" class="card-img" alt="순위 이미지가 없습니다..">
			</div>
			<div class="col-3">
				<a href="#"><img src="https://via.placeholder.com/150x150" class="card-img" alt="이미지가 없습니다."></a>
			</div>
			<div class="col-7">
				<h4 class="text-left">
					<a href="#">book title</a>
				</h4>
				<div class="row">
					<div class="col-2 text-right">
						<p>
							writer<br> publisher
						</p>
					</div>
					<div class="col-5 text-left">
						<p>
							$writer<br> $publisher
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<div class="container bg-dark text-center text-white p-2">
		<div class="row">
			<div class="col">
				<a href="#">1 - 10</a>
			</div>
			<div class="col">
				<a href="#">11 - 20</a>
			</div>
			<div class="col">
				<a href="#">21 - 30</a>
			</div>
			<div class="col">
				<a href="#">31 - 40</a>
			</div>
			<div class="col">
				<a href="#">41 - 50</a>
			</div>
		</div>
	</div>
	<br>
</div>
<!-- 순위 리스트 끝 -->
<!-- 페이지 내용 끝 -->

<jsp:include page="../99_footer.jsp"></jsp:include>