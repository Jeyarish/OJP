<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.ojp.bl.*,com.ojp.dto.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
  String provider_status="APPROVED",provider_id;
provider_id= request.getParameter("provider_id");

 int result=JobProviderBL.updateStatus(provider_status, provider_id);
 if(result>0)
 {
 response.sendRedirect("view_jobproviders.jsp");
 }
 else{
	 
	 response.sendRedirect("view_jobproviders.jsp");
	 
 }
%>
</body>
</html>