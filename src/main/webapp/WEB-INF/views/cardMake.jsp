<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>카드 제작</title>
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
				height:900px;
				margin:auto;
				float:left;
				background-color:#F5A9F2;
			}
			#makeLocation {
				width:850px;
				height:530px;
				margin:100px 350px 50px 550px;
				float:left;
				background-color:#FFFFFF;
			}
			#saveButton {
				margin:0px 0px 0px 750px;
			}
			.button {
				background-color:#FF8000;
				cursor:pointer;
				color:white;
				font-weight:bold;
				font-size:15pt;
				border:none;
				width:200px;
				height:75px;
				margin: 10px 0px 0px 30px;
			}
		</style>
	</head>
	<body>
		<jsp:include page="header.jsp"/>
		<div id="wrapper">
			<div id="background">
					<div id="makeLocation">
						
					</div>
				<form>
            		<input type="submit" value="저장" id="saveButton" class="button" />
            		<input type="reset" value="초기화" class="button" />
				</form>
			</div>
		</div>
		<jsp:include page="footer.jsp"/>
	</body>
</html>