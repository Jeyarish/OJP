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
    String seeker_id,seeker_name,seeker_dob,seeker_gender,seeker_skilltype,seeker_experience,seeker_address,seeker_district,seeker_status,seeker_wages;
    int result;
    long seeker_phonenumber;
    
    seeker_name=request.getParameter("seeker_name");
    seeker_dob=request.getParameter("seeker_dob");
    seeker_gender=request.getParameter("seeker_gender");
    seeker_skilltype=request.getParameter("seeker_skilltype");
    seeker_experience= request.getParameter("seeker_experience");
    seeker_address=request.getParameter("seeker_address");
    seeker_district=request.getParameter("seeker_district");
    seeker_phonenumber=Long.parseLong(request.getParameter("seeker_phonenumber"));
    seeker_wages = request.getParameter("seeker_wages");
    	
    String userid=(String)session.getAttribute("userid");
    
    JobseekerDTO seeker=new JobseekerDTO();
    seeker.setSeeker_id(userid);
    seeker.setSeeker_name(seeker_name);
  	seeker.setSeeker_dob(seeker_dob);
    seeker.setSeeker_gender(seeker_gender);
    seeker.setSeeker_skilltype(seeker_skilltype);
    seeker.setSeeker_experience(seeker_experience);
    seeker.setSeeker_address(seeker_address);
    seeker.setSeeker_district(seeker_district);
    seeker.setSeeker_phonenumber(seeker_phonenumber); 
    seeker.setSeeker_wages(seeker_wages);
    
    result=SeekerBL.updateSeeker(seeker);
    response.sendRedirect("view_profile.jsp");
   
%>
</body>
</html>