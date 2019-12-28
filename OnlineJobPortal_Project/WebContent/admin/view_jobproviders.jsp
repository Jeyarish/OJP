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
</head>
<body>
	
	
		<div class="container">
			
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>Gender</th>
								<th>Address</th>
								<th>Phone Number</th>
								<th>status</th>
								<th>Approve</th>
								<th>Reject</th>
							</tr>
						</thead>
	<%

  ArrayList<JobProviderDTO> providers=JobProviderBL.getProviders();

if(providers!=null && (providers.size()>0))

  {
	
	 for(JobProviderDTO provider:providers )

	  {

	    %>	
						
						<tbody>
								<tr>
									<td><%=provider.getJobprovider_id()%></td>
									<td><%=provider.getJobprovider_name() %></td>
									<td><%=provider.getJobprovider_gender()%></td>
									<td><%=provider.getJobprovider_address() %></td>
									<td><%=provider.getJobprovider_phonenumber()%></td>
									<td><%=provider.getJobprovider_status() %></td>
									<td><a href="approve_providers.jsp?provider_id=<%= provider.getJobprovider_id() %>" >
									<button class="btn btn-success">Approve</button></a>
									</td>
									<td><a href="reject_provideers.jsp?provider_id=<%= provider.getJobprovider_id() %>" >
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