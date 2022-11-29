<%@ page contentType="text/html;charset=UTF-8"%>
<jsp:useBean id="memMgr" class="inCard.MemberMgr" />
<%
	String cust_id = request.getParameter("cust_id");    //기존에 있는 아이디와 입력한 아이디의값이 참인지 거짓인지
	String cust_pw = request.getParameter("cust_pw");  //기존에 있는 pw와 입력한 pw의 값이 참인지 거짓인지
	boolean loginCheck = memMgr.loginCheck(cust_id,cust_pw); 
	
	System.out.println("결과 : "+loginCheck);
   if(loginCheck){     
	  session.setAttribute("idKey",cust_id);   // loginCheck의 값이 참일때 아이디 값을 index.jsp에 보내서 OO님 환영합니다.에 값을 넣음
	  response.sendRedirect("loginindex.jsp");
   }else{
      response.sendRedirect("login_error.jsp");    //loginCheck의 값이 거짓일때 에러 페이지로 넘어감
   }
%>

