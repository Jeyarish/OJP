<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="com.ojp.dto.*"
    pageEncoding="ISO-8859-1" import="com.ojp.bl.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
    String id,user_name,password,user_jp;
    int result;
    
    id=request.getParameter("id");
    user_name=request.getParameter("username");
    password=request.getParameter("password");
    
    user_jp = UserBL.checkUserName(user_name);
    if(user_jp==null)
    { 
    UserLoginDTO user=new UserLoginDTO();
    user.setId(id);
    user.setUser_name(user_name);
    user.setPassword(password);
    
    result=UserBL.adduser(user);
    response.sendRedirect("../home_login.jsp");
    }
    else
    {
    	session.setAttribute("message","Username already exists!!!");
    	response.sendRedirect("jobprovider_signup.jsp");
    }
   
%>
</body>
</html>