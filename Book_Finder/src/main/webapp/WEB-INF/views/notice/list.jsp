<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../00_header.jsp"></jsp:include>
<jsp:include page="../01_nav.jsp"></jsp:include>

<!-- 페이지 내용 시작 -->
<!-- 페이지 제목 시작 -->
<div class="container text-center text-white bg-dark mt-5 py-5">
	<h1>공지사항</h1>
	<a href="/notice/write" class="float-right btn btn-outline-primary">공지사항 작성</a>
</div>

<!-- 페이지 제목 끝 -->
<div class="container bg-dark py-3">
	<div class="container text-center  bg-white py-3">
		<div class="float-right form-group">
			<form class="form-inline mt-3" action="/notice/list">
				<select class="form-control" name="type">
					<option value="TCW">검색범위</option>
					<option value="T">제목</option>
					<option value="W">작성자</option>
					<option value="P">내용</option>
					<option value="TW">제목or작성자</option>
					<option value="TP">제목or내용</option>
					<option value="PW">작성자or내용</option>
				</select> <input type="text" class="form-control" placeholder="Search" name="keyword"> <input type="hidden" name="pageNum" value="1"> <input type="hidden" name="amount" value="<c:out value='${pgvo.cri.amount }' />">
				<div class="input-group-append">
					<button class="btn btn-success" type="submit">검색</button>
				</div>
			</form>
		</div>
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
				<c:choose>
					<c:when test="${list ne null && list.size() != 0 }">
						<c:forEach items="${list }" var="nvo">
							<tr>
								<td>${nvo.nno }</td>
								<td><a href="/notice/detail?nno=${nvo.nno }&pageNum=${pgvo.cri.pageNum }&amount=${pgvo.cri.amount }&type=${pgvo.cri.type }&keyword=${pgvo.cri.keyword }"> ${nvo.title }</a></td>
								<td>${nvo.modd8 }</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="5"><h5>등록된 공지사항이 없습니다!</h5></td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
		<!-- 페이지네이션 시작 -->
		<nav aria-label="Pagination">
			<ul class="pagination">
				<c:if test="${pgvo.prev }">
					<li class="page-item"><a class="page-link" href="/notice/list?pageNum=${pgvo.startPage-1 }&amount=${pgvo.cri.amount}&type=${pgvo.cri.type }&keyword=${pgvo.cri.keyword }">Prev</a></li>
				</c:if>
				<c:forEach var="i" begin="${pgvo.startPage }" end="${pgvo.endPage }">
					<li class="page-item ${pgvo.cri.pageNum == i ? 'active' : '' }"><a class="page-link" href="/notice/list?pageNum=${i }&amount=${pgvo.cri.amount}&type=${pgvo.cri.type }&keyword=${pgvo.cri.keyword }">${i }</a></li>
				</c:forEach>
				<c:if test="${pgvo.next }">
					<li class="page-item"><a class="page-link" href="/notice/list?pageNum=${pgvo.endPage+1 }&amount=${pgvo.cri.amount}&type=${pgvo.cri.type }&keyword=${pgvo.cri.keyword }">Next</a></li>
				</c:if>
			</ul>
		</nav>
		<!-- 페이지네이션 끝 -->
		<br>
	</div>
</div>
<!-- 페이지 내용 끝 -->

<jsp:include page="../99_footer.jsp"></jsp:include>