<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" >
<head>
	<title>회원가입</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
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
		
		.form-save-section {
			display: flex;
			justify-content: space-between;
			margin-top: 20px;
		}
	</style>
</head>
<body>
	<div class="container">
		<div class="login-section">
			<h1>로그인</h1>
			<form action="/action_page.php">
				<div class="form-group">
					<label for="id">ID:</label> <input type="text" class="form-control" placeholder="아이디를 입력하세요." id="id">
				</div>
				<div class="form-group">
					<label for="password">Password:</label> <input type="password" class="form-control" placeholder="비밀번호를 입력하세요." id="password">
				</div>
				<div class="form-save-section">
			 		<div class="form-group form-check">
						<label class="form-check-label"> <input class="form-check-input" type="checkbox"> 아이디 저장 </label>
					</div>
					<button type="submit" class="btn btn-primary">로그인</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>l>