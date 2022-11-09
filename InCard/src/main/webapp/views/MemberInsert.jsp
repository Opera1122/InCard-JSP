<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="memMgr" class="inCard.MemberMgr" />
<jsp:useBean id="regBean" class="inCard.RegisterBean" />
<jsp:setProperty name="regBean" property="*" />
<%
    boolean flag = memMgr.memberInsert(regBean);
%>

<html>
<head>
<style>
	#wrapper {
		margin:auto;
		padding: 150px 0px 0px 0px;
		font-size: 40pt;
		width:1280;
		height:200;
	}
	#image {
		background-repeat:no-repeat;
		background-image:url("../images/cards/팡.png");
		width:1280;
		height:500;
	}
	a {
		background-color:red;
		text-decoration:none;
		color:white;
	}
</style>
<title>회원가입 확인</title>
<html>
<body>
<div id="wrapper" align="center">
<%
if(flag){
	  out.println("<b>회원가입을 축하 드립니다.</b><p>");
	  out.println("<a href=login.jsp>로그인</a>");
	}else{
		out.println( );
	  out.println("<b>다시 입력하여 주십시오.</b><p>");%>
	  <input class="btn btn-warning" type="button" value="다시가입" onclick="history.back()">
	<%}%>
	<div id="image">
	
	</div>
</div>
</body>
</html>
