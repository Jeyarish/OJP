<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.ojp.dto.*,com.ojp.bl.*"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>view job provider profile</title>

    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Main CSS-->
    <link href="../seeker/viewprofile/css/main.css" rel="stylesheet" media="all">
</head>

<body>
						
	<%
String userid=(String)session.getAttribute("userid");
 JobProviderDTO provider=JobProviderBL.getProvider(userid);
	
	{
	%>
	<tbody>
    <div class="page-wrapper bg-dark p-t-100 p-b-50">
        <div class="wrapper wrapper--w900">
            <div class="card card-6">
                <div class="card-heading">
                    <h2 class="title">Your Profile</h2>
                </div>
                <div class="card-body">
                    <form method="POST">
                    <div class="form-row">
                            <div class="name">Id</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="provider_id" value='<%= provider.getJobprovider_id() %>' readonly>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Name</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="provider_name" value='<%=provider.getJobprovider_name()%>' readonly>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="name">Gender</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="provider_gender" value='<%=provider.getJobprovider_gender()%>' readonly>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="name">Address</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="provider_address" value='<%=provider.getJobprovider_address() %>' readonly>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="name">Phonenumber</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="provider_phonenumber" value='<%=provider.getJobprovider_phonenumber()%>' readonly>
                            </div>
                        </div>


                      
                         <div class="value">
                              <a href="seeker_home.jsp"><input type="submit" value="Back"'></a><br>
                             <a href="edit_seeker.jsp">    <input type="submit" value="edit"></a>
                        </div>
                         </form>
                </div>
                
            </div>
        </div>
    </div>
    <%
	}
    %>
</body>
</html>