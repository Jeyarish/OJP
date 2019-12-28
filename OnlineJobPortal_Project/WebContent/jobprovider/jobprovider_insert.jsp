<%@ page import="com.ojp.utilities.JobproviderIdGenerator" import="com.ojp.bl.JobProviderBL" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.ojp.dto.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
    String jobprovider_id,jobprovider_name,jobprovider_gender,jobprovider_address,jobprovider_district;
    int result;
    long jobprovider_phonenumber;
    
    jobprovider_id=JobproviderIdGenerator.generateJobproviderId();
    jobprovider_name=request.getParameter("jobprovider_name");
    jobprovider_gender=request.getParameter("jobprovider_gender");
    jobprovider_address=request.getParameter("jobprovider_address");
    jobprovider_phonenumber=Long.parseLong(request.getParameter("jobprovider_phonenumber"));
    
    session.setAttribute("jobprovider_id", jobprovider_id);
    
   JobProviderDTO jobprovider=new JobProviderDTO();
   
   jobprovider.setJobprovider_id(jobprovider_id);
   jobprovider.setJobprovider_name(jobprovider_name);
   jobprovider.setJobprovider_gender(jobprovider_gender);
   jobprovider.setJobprovider_address(jobprovider_address);
   jobprovider.setJobprovider_phonenumber(jobprovider_phonenumber);
   jobprovider.setJobprovider_status("NEW");
   
   result=JobProviderBL.addjobprovider(jobprovider);
   response.sendRedirect("jobprovider_signup.jsp");
%>
</body>
</html>