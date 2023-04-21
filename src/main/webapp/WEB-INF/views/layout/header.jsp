<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common.jsp" %>
	<style type="text/css">
		@import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@500&display=swap');
		html, body {
			height: 100%;
			font-family: 'IBM Plex Sans KR', sans-serif;
			background-color: #FFEEDD;
		}
		.navbar {
			background: linear-gradient(45deg, Orange, #CC3300) !important;
			height: 100px;
			margin-bottom: 4%;
		}
		.aram-title{
			font-size: 40px;
			font-weight: bold;
		}
		.navbar-collapse {
		 	   justify-content: right;
		}
		.container{
    		position: relative;
    		background-color: #FFEEDD !important;
		}
		.footer {
	 		position: relative;
  			height: 45px;
  			width: 100%;
  			bottom: 0;
		 	padding: 0 25px;
		  	line-height: 44px;
		  	color: #8a8c8f;
		  	border-top: 1px solid #dee5e7;
		  	background-color: #f2f2f2;
		  	font-size: 11px;
		}
	</style>
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
		<a class="navbar-brand aram-title" href="/">아람</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="/user/updateUserForm">내정보</a></li>
				<li class="nav-item"><a class="nav-link" href="/logout">로그아웃</a></li>
			</ul>
		</div>
	</nav>

