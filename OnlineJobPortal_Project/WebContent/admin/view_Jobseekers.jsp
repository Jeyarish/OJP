<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="com.ojp.dto.*,com.ojp.bl.*,java.util.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Table all workers</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="tabletemplate/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tabletemplate/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tabletemplate/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tabletemplate/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tabletemplate/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tabletemplate/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->

</head>
<body>
	
<div class="container">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>DOB</th>
								<th>Gender</th>
								<th>Skill Type</th>
								<th>Experience</th>
								<th>Address</th>
								<th>District</th>
								<th>Phone Number</th>
								<th>Status</th>
								<th>Hourly wages</th>
								<th>Approve</th>
								<th>Reject</th>
								
							</tr>
						</thead>
						<tbody>
	<%

  ArrayList<JobseekerDTO> seekers=SeekerBL.getSeekers();

if(seekers!=null && (seekers.size()>0))

  {
	
	 for(JobseekerDTO seeker : seekers )

	  {

	    %>	
						
								<tr>
									<td><%=seeker.getSeeker_id() %></td>
									<td><%=seeker.getSeeker_name() %></td>
									<td><%=seeker.getSeeker_dob()%></td>
									<td><%=seeker.getSeeker_gender() %></td>
									<td><%=seeker.getSeeker_skilltype() %></td>
									<td><%=seeker.getSeeker_experience() %></td>
									<td><%=seeker.getSeeker_address() %></td>
									<td><%=seeker.getSeeker_district() %></td>
									<td><%=seeker.getSeeker_phonenumber() %></td>
									<td><%=seeker.getSeeker_status()%></td>
									<td><%=seeker.getSeeker_wages()%></td>
									<td><a href="approve_seekers.jsp?seeker_id=<%= seeker.getSeeker_id() %>" >
									<button class="btn btn-success">Approve</button></a>
									</td>
									<td><a href="reject_seekers.jsp?seeker_id=<%= seeker.getSeeker_id() %>" >
									<button class="btn btn-danger">Reject</button></a>
									</td>
									
								</tr>
						<%
		} 
  }
		%>
								
						</tbody>
					</table>
				</div>
	


	

<!--===============================================================================================-->	
	<script src="tabletemplate/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="tabletemplate/vendor/bootstrap/js/popper.js"></script>
	<script src="tabletemplate/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	
	<script src="tabletemplate/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="tabletemplate/js/main.js"></script>

</body>
</html>