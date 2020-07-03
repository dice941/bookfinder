<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../00_header.jsp"></jsp:include>
<jsp:include page="../01_nav.jsp"></jsp:include>

<!-- 페이지 내용 시작 -->
<div class="container bg-light px-5 py-5">
	<form>
		<div class="row py-2">
			<div class="col-2 text-right">
				<label for="nickName">닉네임</label>
			</div>
			<div class="col-6">
				<input type="text" class="form-control" id="nickName" name="nickName" placeholder="아이디를 입력해주세요.">
			</div>
		</div>
		<div class="row py-2">
			<div class="col-2 text-right">
				<label for="userId">아이디</label>
			</div>
			<div class="col-6">
				<input type="text" class="form-control" id="userId" name="userId" maxlength="20" value="">
			</div>
		</div>
		<div class="row py-2">
			<div class="col-2 text-right">
				<label for="userPw">패스워드</label>
			</div>
			<div class="col-6">
				<input type="password" class="form-control" id="userPw" name="userpPw" maxlength="20" autocomplete="off">
			</div>
		</div>
		<div class="row py-2">
			<div class="col-2 text-right">
				<label for="userPwCheck">패스워드확인</label>
			</div>
			<div class="col-6">
				<input type="password" class="form-control" id="userPwCheck" name="userPwCheck" maxlength="20" autocomplete="off">
			</div>
		</div>

		<div class="row py-2">
			<div class="col-2 text-right">
				<label for="email">이메일</label>
			</div>
			<div class="col-6 row">
				<div class="col-5">
					<input type="text" class="form-control" id="email01" name="email01" autocomplete="off">
				</div>
				<div class="col-1">
					<h3>
						<span>@</span>
					</h3>
				</div>
				<div class="col-6">
					<input class="form-control" id="email02" name="email02" list="domains" placeholder="직접입력">
					<datalist id="domains">
						<option value="">
							<option value="naver.com"><option v alue="gmail.com">
							
						<option value="nate.com">
							
						<option value="hanmail.net">
							
						<option value="daum.net">
						
					</datalist>
					</div>
				</div>
			</div>
			<br>
			<div class="row py-2">
				<div class="col text-center">
					<button type="submit" class="btn btn-info" onclick="location.href='doSignup.html'">회원가입</button>
				</div>
			</div>
		</form>
	</div>

	<!-- 페이지 내용 끝 -->

<jsp:include page="../99_footer.jsp"></jsp:include>