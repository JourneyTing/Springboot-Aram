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
		    margin: 6% 0;
		}
		.aram-title {
			font-weight: bold;
			font-size: 50px;
			text-align: center;
			margin-right: 42%;
			margin-bottom: 10px;
			color: yellow;
		}
		.container {
			width: 50%;
			background-color: white;
			padding: 0;
		}
		.join-section {
			width: 100%; 
			height: 100%;
			border: 2px solid #CFCFCF;	
			padding: 30px;
		}
		h1 {
			margin-bottom: 20px;
			font-weight: bold;
		}
		.button {
			background-color: orange;
    		color: white;	
    		border:1px solid orange;
    		margin-top: 10px;
    		position: relative;
    		left: 710px;
		}
	</style>
</head>
<body>
	<div class="aram-title">아람</div>
	<div class="container">
		<div class="join-section">
			<h1>회원가입</h1>
			<form>
				<div class="form-group">
					<label for="id">아이디</label> 
					<input type="text" class="form-control" placeholder="아이디를 입력하세요." id="id">
				</div>
				<div class="form-group">
					<label for="password">비밀번호</label> 
					<input type="password" class="form-control" placeholder="비밀번호를 입력하세요." id="password">
				</div>
				<div class="form-group">
					<label for="password-check">비밀번호 확인</label> 
					<input type="password" class="form-control" placeholder="비밀번호를 다시 한 번 입력하세요." id="password-check">
				</div>
				<div class="form-group">
					<label for="email">이메일</label> 
					<input type="email" class="form-control" placeholder="이메일을 입력하세요." id="email">
				</div>
				<div class="form-group">
					<label for="name">이름</label> 
					<input type="name" class="form-control" placeholder="이름을 입력하세요." id="name">
				</div>
			</form>
			<button id="btn-save" class="btn btn-primary button">회원가입</button>
		</div>
	</div>
	<script src="/js/user.js"></script>
</body>
</html>