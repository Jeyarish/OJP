<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.ojp.dto.*,com.ojp.bl.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
  String seeker_status,seeker_id;
  seeker_id= (String)session.getAttribute("userid");
  seeker_status=request.getParameter("seeker_status");
 int result=SeekerBL.updateStatus(seeker_status,seeker_id);
 if(result>0)
 {
 response.sendRedirect("seeker_home.jsp");
 }
 else{
	 
	 response.sendRedirect("seeker_home.jsp");
	 
 }
%>

</body>
</html>