<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../00_header.jsp"></jsp:include>
<jsp:include page="../01_nav.jsp"></jsp:include>
<div class=container-fluide>
	<h2 class="float-left mt-3">
		도서 검색 서비스<a href="/tip/write" class="btn btn-outline-primary">책 입고</a>
	</h2>
	<div class="float-right form-group">
		<form class="form-inline mt-3" action="/book/list">
			<select class="form-control" name="type">
				<option value="TCW">검색범위</option>
				<option value="T">제목</option>
				<option value="W">저자</option>
				<option value="P">출판사</option>
				<option value="TW">제목or저자</option>
				<option value="TP">제목or출판사</option>
				<option value="PW">저자or출판사</option>
			</select> <input type="text" class="form-control" placeholder="Search" name="keyword"> <input type="hidden" name="pageNum" value="1"> <input type="hidden" name="amount" value="<c:out value='${pgvo.cri.amount }' />">
			<div class="input-group-append">
				<button class="btn btn-success" type="submit">검색</button>
			</div>
		</form>
	</div>
	<table class="table">
		<thead>
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>등록날짜</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${list ne null && list.size() != 0 }">
					<c:forEach items="${list }" var="bvo">
						<tr>
							<td>${bvo.bno }</td>
							<td><a href="/book/detail?bno=${bvo.bno }&pageNum=${pgvo.cri.pageNum }&amount=${pgvo.cri.amount }&type=${pgvo.cri.type }&keyword=${pgvo.cri.keyword }"> ${bvo.title }<span class="badge badge-pill badge-primary">${bvo.commentcnt }</span></a></td>
							<td>${tvo.writer }</td>
							<td>${tvo.readcount }</td>
							<td>${tvo.modd8 }</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="5"><h5>등록된 책이 없습니다!</h5></td>
					</tr>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
	<ul class="pagination">
		<c:if test="${pgvo.prev }">
			<li class="page-item"><a class="page-link" href="/book/list?pageNum=${pgvo.startPage-1 }&amount=${pgvo.cri.amount}&type=${pgvo.cri.type }&keyword=${pgvo.cri.keyword }">Prev</a></li>
		</c:if>
		<c:forEach var="i" begin="${pgvo.startPage }" end="${pgvo.endPage }">
			<li class="page-item ${pgvo.cri.pageNum == i ? 'active' : '' }"><a class="page-link" href="/book/list?pageNum=${i }&amount=${pgvo.cri.amount}&type=${pgvo.cri.type }&keyword=${pgvo.cri.keyword }">${i }</a></li>
		</c:forEach>
		<c:if test="${pgvo.next }">
			<li class="page-item"><a class="page-link" href="/book/list?pageNum=${pgvo.endPage+1 }&amount=${pgvo.cri.amount}&type=${pgvo.cri.type }&keyword=${pgvo.cri.keyword }">Next</a></li>
		</c:if>
	</ul>
</div>
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

<jsp:include page="../99_footer.jsp"></jsp:include>