/**
 * 
 */
	function loginCheck(){
		if(document.login.cust_id.value==""){
			alert("아이디를 입력해주세요.");
			document.login.cust_id.focus();
			return;
		}
		if(document.login.cust_pw.value==""){
			alert("암호를 입력해주세요.");
			document.login.cust_pw.focus();
			return;
		}
		document.login.submit();
	}
	

	function memberReg(){
		document.location="signUp.jsp";
	}
	
	function inputCheck(){
		if(document.regForm.cust_id.value==""){
			alert("아이디를 입력해주세요.");
			document.regForm.cust_id.focus();
			return;
		}
		if(document.regForm.cust_pw.value==""){
			alert("암호를 입력해주세요.");
			document.regForm.cust_pw.focus();
			return;
		}
		if(document.regForm.mem_repasswd.value==""){
			alert("암호 확인을 입력하세요..");
			document.regForm.mem_repasswd.focus();
			return;
		}
		if(document.regForm.mem_name.value==""){
			alert("이름를 입력해주세요.");
			document.regForm.mem_name.focus();
			return;
		}
		if(document.regForm.cust_email.value==""){
			alert("이메일을 입력해주세요.");
			document.regForm.cust_email.focus();
			return;
		}
		if(document.regForm.cust_tel.value==""){
			alert("연락처를 입력해주세요.");
			document.regForm.cust_tel.focus();
			return;
		}

		if(document.regForm.cust_email.value==""){
			alert("이메일을 입력해주세요.");
			document.regForm.cust_email.focus();
			return;
		}

		var str=document.regForm.cust_email.value;	   //email형식 맞추기
		var atPos = str.indexOf('@');
		var atLastPos = str.lastIndexOf('@');
		var dotPos = str.indexOf('.'); 
		var spacePos = str.indexOf(' ');
		var commaPos = str.indexOf(',');
		var eMailSize = str.length;
		if (atPos > 1 && atPos == atLastPos && 
		   dotPos > 3 && spacePos == -1 && commaPos == -1 
		   && atPos + 1 < dotPos && dotPos + 1 < eMailSize);
		else {
			  alert('E-mail 입력 형식이 맞지않습니다.');
			  document.regForm.cust_email.focus();
			  return;
		}

		document.regForm.submit();
	}
	
	function idCheck(id){
		if(id == ""){
			alert("아이디를 확인해주세요.");
			document.regForm.cust_id.focus();
		}else{
			url="IdCheck.jsp?cust_id=" + id;
			window.open(url,"post","width=300,height=150");
		}
	}
	

	