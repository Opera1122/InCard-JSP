<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인</title>
		<style>
			* {
				margin:0px;
				padding:0px;
			}
			#wrapper {
				width:1920px;
				margin:auto;
			}
			#background {
				width:1920px;
				height:1300px;
				background-image:url("../images/background/subBalloon.jpg");
				float:left;
			}
			#title {
				width:1920px;
				height:200px;
				background-color:#D8D8D8;
       	 		background-color: rgba( 255, 255, 255, 0.5 );
				margin:75px 0px 80px 0px;
			}
			#title h1 {
				color:#000000;
				padding: 25px 0px 0px 0px;
				text-align: center;
				font-size: 35pt;
				font-weight:bold;
			}
			#title p {
				color:#000000;
				padding: 40px 0px 0px 0px;
				text-align: center;
				font-size: 15pt;
				font-weight:bold;
			}
			#signUpBackground {
				width:800px;
				height:750px;
				background-color:#FFFFFF;
				margin:auto;
				padding: 30px 0px 0px 0px;
			}
			form {
				margin: 0px 0px 0px 0px;
				text-align:center;
			}
			form p {
				font-size:14pt;
				font-weight:bold;
			}
			.field {
				width: 200px;
				height: 30px;
				margin: 20px 0px 20px 0px;
			}
			.field2 {
				width: 400px;
				height: 30px;
				margin: 20px 0px 20px 0px;
			}
			#radio {
				width: 20px;
				height: 20px;
				margin: 20px 0px 20px 0px;
			}
			.button {
  				background-color: #f4511e;
 				border: none;
  				color: white;
  				padding: 16px 32px;
  				text-align: center;
  				font-size: 16px;
  				margin: 4px 2px;
  				opacity: 0.6;
  				transition: 0.3s;
  				display: inline-block;
  				text-decoration: none;
  				cursor: pointer;
				}

			.button:hover {
				opacity: 1
				}
				
			.idcheck {
				border-radius: 5px;
				width: 80px;
				background-color: white;
			}
			
		</style>
	</head>
	<body>
		<jsp:include page="header.jsp"/>
		<div id="wrapper">
			<div id="background">
				<div id="title">
					<h1>회원가입</h1>
					<p>In Card 홈페이지에 방문해주셔서 감사합니다.</p>
				</div>
				<div id="signUpBackground">
					<form name="regForm" method="post" action="MemberInsert.jsp">
            			<p>아이디</p> <input type="text" class="field" name = "cust_id" id = "cust_id">&nbsp;<br>
            			<p>비밀번호</p> <input type="password" class="field" name = "cust_pw" id = "cust_pw"><br>
            			<p>이름</p> <input type="text" class="field" name = "cust_name" id = "cust_name"><br>
            			<p>이메일</p> <input type="email" class="field2" name = "cust_email" id = "cust_email"><br>
            			<p>휴대전화</p> <input type="tel" class="field" name = "cust_tel" id = "cust_tel"><br>
            			<input type="submit" value="가입 하기" class="button" onclick="inputCheck()" />
            			<input type="reset" value="다시 작성" class="button" />
          			</form>
				</div>
			</div>
		</div>
		<jsp:include page="footer.jsp"/>
	</body>
</html>