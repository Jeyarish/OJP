<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.ojp.dto.*,com.ojp.bl.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
  String seeker_status="APPROVED",seeker_id;
  seeker_id= request.getParameter("seeker_id");

 int result=SeekerBL.updateStatus(seeker_status,seeker_id);
 if(result>0)
 {
 response.sendRedirect("view_Jobseekers.jsp");
 }
 else{
	 
	 response.sendRedirect("view_Jobseekers.jsp");
	 
 }
%>
</body>
</html>