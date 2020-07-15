<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../00_header.jsp"></jsp:include>
<jsp:include page="../01_nav.jsp"></jsp:include>

<h2>도서 정보 수정 페이지</h2>
<form action="/book/modify" method="post" enctype="multipart/form-data">
	<input type="hidden" name="imgfile" value="${bvo.bimgfile }">
	<table class="table table-bordered">
		<tr>
			<th>등록 번호</th>
			<td><input type="text" name="bno" value="${bvo.bno }" readonly class="form-control" placeholder="제목"></td>
		</tr>
		<tr>
			<th>도서 명</th>
			<td><input type="text" name="btitle" value="${bvo.btitle }" class="form-control" placeholder="작성자"></td>
		</tr>
		<tr>
			<th>저자</th>
			<td><input type="text" name="writer" value="${bvo.writer }" class="form-control"></td>
		</tr>
		<tr>
			<th>출판사</th>
			<td><input type="text" name="publisher" value="${bvo.publisher }" class="form-control"></td>
		</tr>
		<tr>
			<th>금액</th>
			<td><input type="text" name="price" value="${bvo.price }" class="form-control"></td>
		</tr>
		<tr>
			<th>도서 상세 내용</th>
			<td><textarea rows="5" name="content" class="form-control">${bvo.content }</textarea></td>
		</tr>
		<tr>
			<th rowspan="2">도서 이미지</th>
			<td>
				<c:choose>
					<c:when test="${!bvo.bimgfile.equals('NONE') }">
						<img src="/images/${bvo.bimgfile }" width="33%">
					</c:when>
					<c:otherwise>
						${bvo.bimgfile }
					</c:otherwise>
				</c:choose>
		</tr>
		<tr>
			<td><input type="text" name="bimgfile" value="${bvo.bimgfile }" class="form-control" readonly></td>

		</tr>

		<tr>
			<th>도서 이미지 수정</th>
			<td><input type="file" name="new_imgfile" value="${bvo.bimgfile }" class="form-control"></td>
		</tr>
		<tr>
			<td colspan="2">
				<button type="submit" class="btn btn-primary">수정완료</button>
				<button type="button" class="btn btn=outline-danger" id="rmBtn">삭제하기</button>
			</td>
		</tr>
	</table>
</form>
<form action="/book/remove" method="post" id="rmForm">
	<input type="hidden" name="bno" value="${bvo.bno }"> <input type="hidden" name="pageNum" value="${cri.pageNum }"> <input type="hidden" name="amount" value="${cri.amount }">
</form>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script>
	$(function()
	{
		$(document).on("click", "img", function()
		{
			let inpno = '<c:out value="${pvo.pno}" />';
			let inimgfile = '<c:out value="${pvo.imgfile}" />';
			if(confirm("삭제하시겠습니까?"))
			{
				$.ajax(
				{
					url : "/product/rmimg",
					type : "POST",
					data :
					{
						pno : inpno,
						imgfile : inimgfile
					}
				}).done(function(result)
				{
					//리다이렉트로 리절트가 반응함
					alert("이미지를 삭제를 성공했습니다.");
					location.replace("/product/detail?pno=" + inpno);
					/* $("img").remove(); */
				}).fail(function()
				{
					alert("이미지를 삭제를 실패했습니다.");
				}).always(function()
				{
					// $("img").remove();
					// $("#imgzone").append().text("NONE");
					//
				});
			}
			else
			{
			}
		});
	});
</script>
<jsp:include page="../99_footer.jsp"></jsp:include>