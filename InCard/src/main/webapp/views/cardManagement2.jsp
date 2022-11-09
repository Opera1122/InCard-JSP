<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>내 카드 관리</title>
		<style>
			* {
			    margin:0px;
			    padding:0px;
			}
			
			#intro {
				text-align:center;
			    padding:50px 0px 0px 750px;
			    margin:auto;
				font-weight:bold;
			}
			
			#wrapper {
			    width:1920px;
			    margin:auto;
			}
			#contentsBackground {
			    width:1920px;
			    height:800px;
			    margin:auto;
			    float:left;
			    background-color:#A9F5E1;
			}
			#contents {
			    width:1280px;
			    height:800px;
			    text-align:center;
			    float:center;
			    padding:0px 0px 0px 0px;
			}
			#cardManage{
			    width:1280px;
			    height:0px;
			    margin:auto;
			    float:left;
			    padding:50px 0px 0px 500px;
			}
			
			    .card {
			    margin: 30px 0px 0px 30px;
			    float: left;
			}
			
			    .card img {
			    width:300px;
			}
		</style>	
	</head>
	<body>
	<jsp:include page="header2.jsp"/>
		<div id="wrapper">
			<div id="contentsBackground">
				<div id="contents">
					<div id="intro">
						<h1>내 초대장 관리하기</h1>
						<br>
						<p>지금까지 만들어 놓은 초대장들을 쉽게 관리 해보세요!</p>
						<p>아직 초대장이 없나요? 그럼 초대장 만들기에서 멋지게 만들어보세요!</p>
					</div>
					<div id ="cardManage">
					<section class="card">
							<a href=""><img src="../images/cards/샴페인.png"></a>
						</section>					
					<section class="card">
							<a href=""><img src="../images/cards/케이크2.png"></a>
						</section>					
					<section class="card">
							<a href=""><img src="../images/cards/풍선.png"></a>
						</section>
					<section class="card">
							<a href=""><img src="../images/cards/하트결합.png"></a>
						</section>
					<section class="card">
							<a href=""><img src="../images/cards/선물끈.png"></a>
						</section>					
					<section class="card">
							<a href=""><img src="../images/cards/다이아반지.png"></a>
						</section>
					</div>
				</div>		
			</div>
		</div>
	<jsp:include page="footer.jsp"/>
	</body>
</html>