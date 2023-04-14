<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>
<!DOCTYPE html>
<html lang="ko" >
<head>
	<title>로그인</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
	<style>
		html, body {
     		min-height: 100%;
		}
		
		body {
			background: linear-gradient(#FFCC66, #FF9933, #CC6633);
		    width: 100%;
		    margin: 15% 0;
		}
		.container {
			width: 30%;
			background-color: white;
			padding: 0;
		}
		.login-section {
			width: 100%;
			height: 100%;
			border: 2px solid #CFCFCF;	
			padding: 30px;
		}
		
		h1 {
			margin-bottom: 20px;
			font-weight: bold;
		}
		
	</style>
</head>
<body>
	<div class="container">
		<div class="login-section">
			<h1>로그인</h1>
			<form action="/auth/loginProc" method="post">
				<div class="form-group">
					<label for="id">ID:</label> 
					<input type="text"  name="id"  class="form-control" placeholder="아이디를 입력하세요." id="id">
				</div>
				<div class="form-group">
					<label for="password">Password:</label> 
					<input type="password" name="password"class="form-control" placeholder="비밀번호를 입력하세요." id="password">
				</div>
		 		<!-- <div class="form-group form-check">
					<label class="form-check-label"> 
					<input name="remember" class="form-check-input" type="checkbox"> 아이디 저장 </label>
				</div> -->
				<div>
					<button type="button" class="btn btn-primary" onclick="location.href = '/auth/joinForm'">회원가입</button>
					<button id="btn-login" class="btn btn-primary">로그인</button>
				</div>
			</form>
		</div>
	</div>
	<script src="/js/user.js"></script>
</body>
</html>