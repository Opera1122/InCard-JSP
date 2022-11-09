<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="inCard.MemberMgr" %>
<jsp:useBean id="memMgr" class="inCard.MemberMgr" />

<%
   request.setCharacterEncoding("euc-kr");
   String cust_id = request.getParameter("cust_id");
   boolean check = memMgr.checkId(cust_id);
%>

<html>
<head>
<title>ID중복체크</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>

<body bgcolor="#B2CCFF">
<br>
<center>
<b><%=cust_id%></b>
<%
  if(check){
     out.println("는 이미 존재한는 ID입니다.<p>");
}else{    
     out.println("은(는) 사용 가능 합니다.<p>");
}
%>
<a href="javascript:this.close();">닫기</a>
</center>
</body>
</html>