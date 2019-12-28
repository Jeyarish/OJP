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
	<link rel="stylesheet" type="text/css" href="tabletemplate/css/util.css">
	<link rel="stylesheet" type="text/css" href="tabletemplate/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
					<table>
						<thead>
							<tr class="table100-head">
								<th class="column1">Id</th>
								<th class="column2">Name</th>
								<th class="column3">DOB</th>
								<th class="column4">Gender</th>
								<th class="column5">Skill Type</th>
								<th class="column6">Experience</th>
								<th class="column7">Address</th>
								<th class="column8">District</th>
								<th class="column9">Phone Number</th>
								<th class="column10">Status</th>
								<th class="column11">Hourly wages</th>
								
							</tr>
						</thead>
	<%

  ArrayList<JobseekerDTO> seekers=SeekerBL.getSeekers();

if(seekers!=null && (seekers.size()>0))

  {
	
	 for(JobseekerDTO seeker : seekers )

	  {

	    %>	
						
						<tbody>
								<tr>
									<td class="column1"><%=seeker.getSeeker_id() %></td>
									<td class="column2"><%=seeker.getSeeker_name() %></td>
									<td class="column4"><%=seeker.getSeeker_dob()%></td>
									<td class="column4"><%=seeker.getSeeker_gender() %></td>
									<td class="column5"><%=seeker.getSeeker_skilltype() %></td>
									<td class="column6"><%=seeker.getSeeker_experience() %></td>
									<td class="column7"><%=seeker.getSeeker_address() %></td>
									<td class="column8"><%=seeker.getSeeker_district() %></td>
									<td class="column9"><%=seeker.getSeeker_phonenumber() %></td>
									<td class="column10"><%=seeker.getSeeker_status()%></td>
									<td class="column11"><%=seeker.getSeeker_wages()%></td>
								</tr>
						<%
		} 
  }
		%>
								
						</tbody>
					</table>
				</div>
			</div>
		</div>
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