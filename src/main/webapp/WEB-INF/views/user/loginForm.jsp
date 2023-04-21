<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common.jsp" %>
	<style>
		@import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@500&display=swap');
		html, body {
     		min-height: 100%;
     		font-family: 'IBM Plex Sans KR', sans-serif;
		}
		
		body {
			background: linear-gradient(#FFCC66, #FF9933, #CC6633);
		    width: 100%;
		    margin: 12% 0;
		}
		.container {
			width: 30%;
			background-color: white;
			padding: 0;
		}
		.aram-title {
			font-weight: bold;
			font-size: 50px;
			text-align: center;
			margin-right: 23%;
			margin-bottom: 10px;
			color: yellow;
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
		
		.button-section {
			display: flex;
    		justify-content: flex-end;
		}
		
		.join {
			margin-right: 10px;
		}
		
		.button {
			background-color: orange;
    		color: white;	
    		border:1px solid orange;
		}
	</style>
</head>
<body>
	<div class="aram-title">아람</div>
	<div class="container">
		<div class="login-section">
			<h1>로그인</h1>
			<form action="/auth/loginProc" method="post">
				<div class="form-group">
					<label for="id">ID:</label> 
					<input type="text"  name="username"  class="form-control" placeholder="아이디를 입력하세요." id="id">
				</div>
				<div class="form-group">
					<label for="password">Password:</label> 
					<input type="password" name="password"class="form-control" placeholder="비밀번호를 입력하세요." id="password">
				</div>
		 		<div class="form-group form-check">
					<label class="form-check-label"> 
					<input name="remember" class="form-check-input" type="checkbox" > 아이디 저장 </label>
				</div>
				<div class="button-section">
					<button type="button" class="btn btn-primary join button" onclick="location.href = '/auth/joinForm'">회원가입</button>
					<button id="btn-login" class="btn btn-primary button">로그인</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>