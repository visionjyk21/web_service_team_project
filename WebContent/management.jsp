<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
body {
	background-color: #D9E5FF;
}

.navbar {
	margin-bottom: 10;
	border-radius: 10;
	background-color: #6699FF;
	text-color: white;
	height: 80px;
}

.navbar-brand>img {
	height: 100%;
	padding: 100px;
	width: auto
}

.navbar-brand {
	background: url(src/logo.png) center/contain no-repeat;
	width: 190px;
	margin-right: 10px;
	margin-top: 10px;
}

.jumbotron {
	margin-top: 10px;
	background: url(images/banner.png);
	background-size: cover;
	height: 600px;
	color: white;
}

ul li a {
	text-decoration: none;
	font-size: 19px;
	color: white;
	position: relative;
	margin-top: 10px;
}

ul li a::before {
	content: "";
	width: 0px;
	height: 10px;
	background: black;
	position: absolute;
	top: 100%;
	left: 0;
	transition: .5s;
}

ul li a:hover::before {
	width: 50%;
	transform: translateX(100%);
}

.scrollable-menu {
	height: auto;
	max-height: 300px;
	overflow-x: hidden;
}

.wrapper {
	display: flex;
	align-items: center;
	flex-direction: column;
	justify-content: center;
	width: 100%;
	min-height: 100%;
	padding: 20px;
}

#formContent {
	-webkit-border-radius: 10px 10px 10px 10px;
	border-radius: 10px 10px 10px 10px;
	background: #fff;
	padding: 30px;
	width: 90%;
	max-width: 1000px;
	position: relative;
	padding: 0px;
	text-align: center;
	text-color: black;
}

.styled-table {
	border-collapse: collapse;
	font-size: 1.5em;
	font-family: sans-serif;
	min-width: 600px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.styled-table thead tr {
	background-color: #6699FF;
	color: #ffffff;
}

.styled-table th {
	padding: 12px 15px;
	width: 200px;
}

.styled-table td {
	padding: 12px 15px;
	width: 100px;
}

.styled-table tbody tr {
	background-color: #ffffff;
	border-bottom: 1px solid #6699FF;
}

.styled-table tbody tr:nth-of-type(even) {
	background-color: #ffffff;
}

.styled-table tbody tr:last-of-type {
	border-bottom: 2px solid #6699FF;
}

.styled-table tbody tr.active-row {
	font-weight: bold;
	color: black;
}

footer {
	background-color: #6699FF;
	padding: 25px;
}

button{
   width:120px;
   height: 40px;
   color:#fff;
   background: #004fff;
   font-size: 16px;
   border:none;
   border-radius: 20px;
   box-shadow: 0 4px 16px rgba(0,79,255,0.3);
   transition:0.3s;
   position: absolute;
   left:50%;
   top:50%;
   transform: translate(-50%,-50%);
}
button:focus {
   outline:0;
}
button:hover{
   background: rgba(0,79,255,0.9);
   cursor: pointer;
   box-shadow: 0 2px 4px rgba(0,79,255,0.6);
}
</style>
<title>관리자 페이지</title>
</head>

<%
	String userId = (String) session.getAttribute("user_id");
	if (userId == null) {
		session.setAttribute("user_id", "king");
		session.setAttribute("user_pw", "1111");	
	}
%>

<body>
   <jsp:include page="header.jsp"/>
   <div class="container">
   	<div class="jumbotron">
         <h1 class="display-3">관리자 페이지</h1>
      </div>
   </div>
   <div class="container fluid bg-3 text-center">
   <div id="formContent" style="margin-top: 80px;">
      <div class="col-md-2">
      </div>
      <div class="col-md-4">
         <a href="add_player.jsp"><button>선수 등록</button></a>
      </div>
      <div class="col-md-4">
         <a href="manage_player.jsp"><button>선수 정보 수정</button></a>
      </div>
      <div class="col-md-2">
      </div>
   </div>
   </div>
   <br><br><br>
   <jsp:include page="footer.jsp"/>
</body>
</html>