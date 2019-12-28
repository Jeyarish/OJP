<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="com.ojp.dto.*,com.ojp.bl.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login check page</title>
</head>
<body>
	<%!UserLoginDTO user1 = null;
	UserLoginDTO user2 = null;
	String username, password;
	String message = "	";
	String userid = " ";%>
	<%
		if (request.getParameter("login") != null) 
		{
			username = request.getParameter("username");
			password = request.getParameter("password");
			user1 = new UserLoginDTO();
			user1.setUser_name(username);
			user1.setPassword(password);
			user2 = new UserLoginDTO();
			user2 = UserBL.checkLogin(user1);
			userid = user2.getId();

			if (user2.getUser_name() != null) {
				session.setAttribute("user_name", user2.getUser_name());
				session.setAttribute("userid", userid);
				if (user2.getUser_name().equals("admin") && user2.getPassword().equals("admin")) {
					response.sendRedirect("admin/admin_home.jsp");
				} 
				else if(user2.getId().contains("SE"))
				{
					JobseekerDTO seeker = new JobseekerDTO();
					seeker = SeekerBL.getSeeker(user2.getId());
					if((seeker.getSeeker_status().equals("APPROVED"))||(seeker.getSeeker_status().equals("AVAILABLE"))||(seeker.getSeeker_status().equals("UNAVAILABLE")) )
					{
					response.sendRedirect("seeker/seeker_home.jsp");
					}
					else
					{
						session.setAttribute("message", "You are not approved!!!");
						response.sendRedirect("home_login.jsp");
					}
				}
				else {
						JobProviderDTO provider = new JobProviderDTO();
					provider = JobProviderBL.getProvider(user2.getId());
					if(provider.getJobprovider_status().equals("APPROVED"))
					{
						response.sendRedirect("jobprovider/jobprovider_home.jsp");
					}
					else
					{
						session.setAttribute("message", "You are not approved!!!");
						response.sendRedirect("home_login.jsp");
					}
					
				}

			}

			else {
				session.setAttribute("message", "Wrong User ID or Password");
				response.sendRedirect("home_login.jsp");

			}
		}
	%>




</body>
</html>