<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp"%>
<%@ include file="layout/sideBar.jsp" %>
<style>
	html, body{
		height: 0
	}
	.all-section {
		float: right;
		width: 1050px;
		margin-right: 17%;
    	height: 75%;
	}
	.search {
 	   display: flex;
    	justify-content: center;
    	margin: 25px;
	}
	select {
		width: 150px;
	}
	.search-section {
		width: 40%;
    	margin: 0 10px;
	}
	.search-button {
		background-color: orange;
    	color: white;
    	border:1px solid orange;
	}
	.container {
		margin-top: 20px;
	}
	.read-title {
	    display: flex;
	    justify-content: space-around;
		align-items: center;
	    height: 4rem;
	  	background-color: #FFEEDD;
	    background-clip: border-box;
	    border-top: 1px solid rgba(0,0,0,.125);
	    font-size: 20px;
	}
	.title-section {
	    width: 43%;
    	position: relative;
    	text-align: center;	
	}
	.write-section {
		display: contents;
	}
	.row {
	    height: 3rem;
	    margin: 0;
	  	background-color: #FFEEDD;
	    background-clip: border-box;
	    border-top: 1px solid rgba(0,0,0,.125);
		cursor: pointer;
	}
	.card-body {
		padding: 0.5rem 0
	}
	.read-section {
		display: flex;
		justify-content: space-around;
		align-items: center;
	    line-height: 30px;
	}
	.contents-title {
		width: 45%;
    	position: relative;
    	text-align: center;		
	}
	.write-contents-section{
	    display: contents;
	}

	.row-end {
		border-top: 1px solid rgba(0,0,0,.125);
	}
	.paging {
		padding-top: 20px;
		padding-left: 40px;
		position: fixed;
    	width: 54%;
    	bottom: 62px;
	}
	.write {
    	border:1px solid orange;
    	border-radius: 5px;
    	padding: 10px;
    	width: 70px;
    	background-color: orange;
    	color: white;
    	position: fixed;
    	bottom: 73px;
    	right: 305px;
   	    text-align: center;
	}
	.footer {
		padding: 0px 315px !important;
		top: 720px;
	}
</style>
<div class="all-section" id="wrap">
	<form name="search-form" autocomplete="off"  class="search">
		<select name="type">
			<option selected value="">전체</option>
			<option value="title">제목</option>
			<option value="content">내용</option>
			<option value="writer">작성자</option>
		</select>
		<input type="text"  name="keyword" value="" class="search-section"  maxlength="30"></input>
		<input type="button" id="btn-search" class="btn btn-outline-primary mr-2 search-button" value="검색"></input>
	</form>
	<div class="container">
		<div class="read-title">
			<div class="title-section">제목</div>
			<div class="write-section">
				<div class="write-date-section">작성일</div>
				<div class="writer-section">작성자</div>
			</div>	
		</div>
		<c:forEach var="board" items="${boards.content}">
			<div class="row" onclick="location.href='/board/${board.id}'">
				<div class="card-body" >
					<div class="read-section">
						<div class="contents-title">${board.title}</div>
						<div class="write-contents-section">
							<div class="write-date">${board.createDate}</div>
							<div class="content-writer">${board.user.name}</div>
						</div>				
					</div>
				</div>
			</div>
		</c:forEach>
		<div class="row-end"></div>
	
	  	<ul class="pagination paging justify-content-center">
		  	<c:choose>
		  		<c:when test="${boards.first}">
		  			<li class="page-item disabled"><a class="page-link" href="?page=${boards.number-1 }">Previous</a></li>
		  		</c:when>
		  		<c:otherwise>
		  			<li class="page-item"><a class="page-link" href="?page=${boards.number-1}">Previous</a></li>
		  		</c:otherwise>
		  	</c:choose>
		  	<c:choose>
		  		<c:when test="${boards.last}">
		  			<li class="page-item disabled"><a class="page-link" href="?page=${boards.number+1}">Next</a></li>
		  		</c:when>
		  		<c:otherwise>
		  			<li class="page-item"><a class="page-link" href="?page=${boards.number+1}">Next</a></li>
		  		</c:otherwise>
		  	</c:choose>
	<!-- 	  <li class="page-item"><a class="page-link" href="#">1</a></li>
		  <li class="page-item"><a class="page-link" href="#">2</a></li>
		  <li class="page-item"><a class="page-link" href="#">3</a></li> -->
		  </ul>
	
		<div align="right"><a class="write" href="/../board/saveForm">글쓰기</a></div>
	</div>
</div>
<%@ include file="layout/footer.jsp"%>
<script src="/js/board.js"></script>
