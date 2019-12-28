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


String jobprovider_id,jobprovider_name,jobprovider_gender,jobprovider_address,jobprovider_status;
	long jobprovider_phonenumber;
	int result;
	
	jobprovider_name=request.getParameter("jobprovider_name");
	jobprovider_gender=request.getParameter("jobprovider_gender");
	jobprovider_address=request.getParameter("jobprovider_address");
	jobprovider_phonenumber=Long.parseLong(request.getParameter("jobprovider_phonenumber"));
	
	String userid=(String)session.getAttribute("userid");
	
	JobProviderDTO provider=new JobProviderDTO();
	provider.setJobprovider_name(jobprovider_name);
	provider.setJobprovider_gender(jobprovider_gender);
	provider.setJobprovider_address(jobprovider_address);
	provider.setJobprovider_phonenumber(jobprovider_phonenumber);
	
	
	
	result=JobProviderBL.
	
	%>


</body>
</html>