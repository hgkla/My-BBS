<%@page pageEncoding="gb18030" %>
<%@page import="java.sql.*,java.io.*,com.guo.bbs.*,java.util.*" %>

<%

request.setCharacterEncoding("gbk");
String action = request.getParameter("action");

String username = null;
if(action != null && action.trim().equals("login")){
	username = request.getParameter("username");
	String password = request.getParameter("password");
	if(username==null||!username.trim().equals("admin")){
		out.println("username not correct!");
	}else if(password==null||!password.trim().equals("admin")){
		out.println("password not correct!");
	}else{
		session.setAttribute("adminLogined", "true");	
		response.sendRedirect("articleFlat.jsp");
	}
}

%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
	<head>

  		<title>����Ա��¼</title>
  
	</head>

<body>
  	
	
		<form action="login.jsp" method = "post">
			<input type = "hidden" name = "action" value = "login"/>
			�û�����<input type="text" name = "username"  value =<%=username %>/><br/>
			���룺<input type="password" name = "password" /><br/>
			
			<input type="submit" value = "login"/><br/>
	   </form>

</body>
</html>