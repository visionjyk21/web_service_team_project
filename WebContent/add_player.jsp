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
</style>
<title>선수 등록</title>
</head>

<body>
	<jsp:include page="header.jsp"/>
	<div class="container">
	<div class="jumbotron">
		
			<h1 class="display-3">선수 등록</h1>
		</div>
	</div>
	<div class="container">
		<form name="newPlayer" action="./process_add_player.jsp" method="post"
		class="form-horizontal" enctype="multipart/form-data">
		
			<div class="form-group row">
				<label class="col-sm-2">이미지</label>
				<div class="col-sm-5">
					<input type="file" name="productImage" class="form-control" required="required">
				</div>
			</div>
		
			<div class="form-group row">
				<label class="col-sm-2">선수 이름</label>
				<div class="col-sm-3">
					<input id="playerName" type="text" name="playerName" class="form-control" required="required">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">팀</label>
				<div class="col-sm-3">
					<select name="team" class="selectpicker">
						<option value=1>아스널 FC</option>
						<option value=2>아스톤 빌라 FC</option>
						<option value=3>브라이튼 앤 호브 알비온 FC</option>
						<option value=4>번리 FC</option>
						<option value=5>첼시 FC</option>
						<option value=6>크리스탈 팰리스 FC</option>
						<option value=7>애버튼 FC</option>
						<option value=8>풀럼 FC</option>
						<option value=9>리즈 유나이티드 FC</option>
						<option value=10>레스터 시티 FC</option>
						<option value=11>리버풀 FC</option>
						<option value=12>멘체스터 시티 FC</option>
						<option value=13>맨체스터 유나이티드 FC</option>
						<option value=14>뉴캐슬 유나이티드 FC</option>
						<option value=15>세필드 유나이티드 FC</option>
						<option value=16>사우샘프턴 FC</option>
						<option value=17>토트넘 홋스퍼 FC</option>
						<option value=18>웨스트 브로미치 앨비언 FC</option>
						<option value=19>웨스트햄 유나이티드 FC</option>
						<option value=20>울버햄튼 원더러스 FC </option>
					</select>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">등번호</label>
				<div class="col-sm-3">
					<input type="text" id="backNumber" name="backNumber" class="form-control required="required"">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">국가</label>
				<div class="col-sm-3">
					<input type="text" name="country" class="form-control" required="required">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">포지션</label>
				<div class="col-sm-3">
					<select name="position">
						<option value=1>GK</option>
						<option value=2>DF</option>
						<option value=3>MF</option>
						<option value=4>FW</option>
					</select>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">나이</label>
				<div class="col-sm-3">
					<input type="text" id="age" name="age" class="form-control" required="required">
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">
				</div>
			</div>
		</form>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>