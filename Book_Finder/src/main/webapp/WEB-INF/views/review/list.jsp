<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../00_header.jsp"></jsp:include>
<jsp:include page="../01_nav.jsp"></jsp:include>

<!-- 페이지 내용 시작 -->
<!-- 페이지 제목시작 -->
<div class="container mt-5 bg-dark text-white text-center">
	<h1>REVIEW</h1>
</div>
<!-- 페이지 제목 끝 -->
<br>

<!-- 리뷰 리스트 시작 -->
<div class="float-right form-group">
	<form class="form-inline mt-3" action="/review/list">
		<select class="form-control" name="type">
			<option value="TCW">검색범위</option>
			<option value="T">제목</option>
			<option value="W">작성자</option>
			<option value="C">내용</option>
			<option value="TW">제목or작성자</option>
			<option value="TC">제목or내용</option>
			<option value="CW">작성자or내용</option>
		</select> <input type="text" class="form-control" placeholder="Search" name="keyword"> <input type="hidden" name="pageNum" value="1"> <input type="hidden" name="amount" value="<c:out value='${pgvo.cri.amount }' />">
		<div class="input-group-append">
			<button class="btn btn-success" type="submit">검색</button>
		</div>
	</form>
</div>
<p class="text-right">
	<a href="/review/write" class="btn btn-outline-primary">리뷰 등록</a>
</p>
<br>
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
		<c:choose>
			<c:when test="${list ne null && list.size() != 0 }">
				<c:forEach items="${list }" var="rvvo">
					<div class="mx-3 py-3 row text-center">
						<div class="col-2">
							<a href="#"><img src="https://via.placeholder.com/100x100" class="card-img" alt="이미지가 없습니다."></a>
						</div>
						<div class="col-4">
							<a href="/review/detail?rvno=${rvvo.rvno }&pageNum=${pgvo.cri.pageNum }&amount=${pgvo.cri.amount }&type=${pgvo.cri.type }&keyword=${pgvo.cri.keyword }"> ${rvvo.rvtitle } </a>
						</div>
						<div class="col-2">${rvvo.rvno }</div>
						<div class="col-2">${rvvo.rvwriter }</div>
						<div class="col-2">${rvvo.modd8 }</div>
					</div>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<tr>
					<td colspan="5"><h5>등록된 게시물이 없습니다!</h5></td>
				</tr>
			</c:otherwise>
		</c:choose>
		<!-- 페이지네이션 시작 -->
		<nav aria-label="Pagination">
			<ul class="pagination justify-content-center">
				<c:if test="${pgvo.prev }">
					<li class="page-item"><a class="page-link" href="/review/list?pageNum=${pgvo.startPage-1 }&amount=${pgvo.cri.amount}&type=${pgvo.cri.type }&keyword=${pgvo.cri.keyword }" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
				</c:if>
				<c:forEach var="i" begin="${pgvo.startPage }" end="${pgvo.endPage }">
					<li class="page-item ${pgvo.cri.pageNum == i ? 'active' : '' }"><a class="page-link" href="/review/list?pageNum=${i }&amount=${pgvo.cri.amount}&type=${pgvo.cri.type }&keyword=${pgvo.cri.keyword }">${i }</a></li>
				</c:forEach>
				<c:if test="${pgvo.next }">
					<li class="page-item"><a class="page-link" href="/review/list?pageNum=${pgvo.endPage+1 }&amount=${pgvo.cri.amount}&type=${pgvo.cri.type }&keyword=${pgvo.cri.keyword }" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
				</c:if>
			</ul>
		</nav>
		<!-- 페이지네이션 끝 -->
		<br>
	</div>
	<br>
</div>
<!-- 리뷰 리스트 끝 -->

<script>
	$(function()
	{
		let sform = $(".form-inline");
		$(".form-inline button")
				.on(
					"click",
					function(e)
					{
						console.log("check1");
						e.preventDefault();
						console
								.log("check2 : "
										+ sform.find("input[name='keyword']")
												.val());
						if(!sform.find("input[name='keyword']").val())
						{
							alert("키워드를 입력하세요!");
							return false;
						}
						sform.submit();
					});
	});
</script>
<script>
	let result = '<c:out value="${result}" />';
	if(result == 'write_ok')
	{
		alert("게시물 등록이 완료되었습니다~!");
	}
	else if(result == 'remove_ok')
	{
		alert("게시물 삭제가 완료되었습니다~!");
	}
	result = "";
</script>
<!-- 페이지 내용 끝 -->

<jsp:include page="../99_footer.jsp"></jsp:include>