<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("UTF-8");
%>          
<jsp:useBean id="memMgr" class="inCard.MemberMgr" />
<jsp:useBean id="regBean" class="inCard.RegisterBean"/>
<jsp:setProperty name="regBean" property="*"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>In Card</title>
		<style>
			* {
				margin:0px;
				padding:0px;
			}
			#wrapper {
				background-color:#F7D358;
				width:1920px;
				height:160px;
				margin:auto;
			}
			#introBackground {
				width:1920px;
				height:1000px;
				background-image:url("../images/background/indexBalloon.jpg");
				float:left;
			}
			#intro {
				width:1280px;
				height:1000px;
				margin:auto;
				padding:300px 0px 0px 210px;
			}
			#intro p {
				font-size:18pt;
			}
			#intro h1 {
				font-weight:bold;
				font-size:40pt;
			}
			#intro p, h1 {
				padding: 0px 0px 30px 0px;
				color:white;
			}
			#makeCardBackground {
				width:1920px;
				height:1090px;
				background-color:#F5A9F2;
				float:left;
			}
			#makeCard {
				width:1280px;
				height:1000px;
				margin:auto;
			}
			#makeCard h1 {
				padding: 25px 0px 50px 0px;
				text-align: center;
				font-size:30pt;
				font-weight:bold;
				color:#424242;
			}
			.card {
				margin: 30px 0px 0px 30px;
				float: left;
			}
			.card img {
				width:580px;
			}
			header {
				width:1280px;
				margin:auto;
			}
			a {
				text-decoration:none;
			}
			#leftContents {
				float:left:
			}
			nav {
				list-style-type:none;
				list-style-position:inside;
				float:right;
			}
			nav li{
				float:left;
				font-size:14pt;
				font-weight:bold;
				color:#424242;
				margin:10px;
				padding:10px 15px 0px 0px;
			}
			#topMenu{
				list-style-type:none;
				float:right;
				padding:0px 500px 0px 0px;
			}
			#topMenu img {
				float:left;
			}
			#topMenu li{
				float:left;
				font-size:20pt;
				font-weight:bold;
				color:#424242;
				margin:10px;
				padding:0px 0px 0px 50px;
			}
			#more {
  				background-color: #f4511e;
 				border: none;
  				color: white;
  				padding: 16px 32px;
  				text-align: center;
  				font-size: 16px;
  				margin: 50px 0px 20px 510px;
  				opacity: 0.6;
  				transition: 0.3s;
  				display: inline-block;
  				text-decoration: none;
  				cursor: pointer;
				}
		</style>
	</head>
	<body>
		<jsp:include page="header2.jsp"/>
		<div id="wrapper">
			<div id="introBackground">
				<div id="intro">
					<h1>About Invitation Card</h1>
					<p>여러가지 카드를 이용해서 편리하게 나만의 초대장을 만들어보세요!</p>
				</div>
			</div>
			<div id="makeCardBackground">
				<div id="makeCard"> 
					<h1>초대장 만들기</h1>
					<section class="card">
						<a href="cardMake.jsp"><img src="../images/cards/선물상자2.png"></a>
					</section>
					<section class="card">
						<a href="cardMake2.jsp"><img src="../images/cards/와인잔.png"></a>
					</section>
					<section class="card">
						<a href="cardMake3.jsp"><img src="../images/cards/팡.png"></a>
					</section>
					<section class="card">
						<a href="cardMake4.jsp"><img src="../images/cards/풍선.png"></a>
					</section>
					<a href="cardManagement2.jsp">
					<div  id = "more">
					디자인 샘플 더보기
					</div>
					</a>
				</div>
			</div>
		</div>
		<jsp:include page="footer.jsp"/>
	</body>
</html>