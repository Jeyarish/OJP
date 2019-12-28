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
    <title>view job seeker profile</title>

    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Main CSS-->
    <link href="viewprofile/css/main.css" rel="stylesheet" media="all">
</head>

<body>
						
	<%
String userid=(String)session.getAttribute("userid");
 JobseekerDTO seeker=SeekerBL.getSeeker(userid);
	
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
                                <input class="input--style-6" type="text" name="seeker_id" value='<%= seeker.getSeeker_id() %>' readonly>
                            </div>
                        </div>
                       
                        <div class="form-row">
                            <div class="name">Name</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="seeker_name" value='<%=seeker.getSeeker_name()%>' readonly>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="name">Date of birth</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="seeker_dob" value='<%=seeker.getSeeker_dob()%>' readonly>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="name">Gender</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="seeker_gender" value='<%=seeker.getSeeker_gender()%>' readonly>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="name">Skill Type</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="seeker_skilltype" value='<%=seeker.getSeeker_skilltype()%>' readonly>
                            </div>
                        </div>


                        <div class="form-row">
                            <div class="name">Experience</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="seeker_experience" value='<%=seeker.getSeeker_experience()%>' readonly>
                            </div>
                        </div>
                        


                        <div class="form-row">
                            <div class="name">Address</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="seeker_address" value='<%=seeker.getSeeker_address() %>' readonly>
                            </div>
                        </div>


                        <div class="form-row">
                            <div class="name">District</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="seeker_district" value='<%=seeker.getSeeker_district() %>' readonly>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="name">Phone Number</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="seeker_phonenumber" value='<%=seeker.getSeeker_phonenumber() %>' readonly>
                            </div>
                        </div>
                       
                        <div class="form-row">
                            <div class="name">Wages</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="seeker_wages" value='<%=seeker.getSeeker_wages() %>' readonly>
                            </div>
                        </div>
                       
                            
                            <div class="value">
                            <table>
                             <td> <a href="seeker_home.jsp"> <button class="btn btn--radius-2 btn--blue" style="margin-left:auto;margin-right:auto;display:block;margin-bottom:10%"  type="submit">Back</button></a></td>
                              
                              <td><a href="edit_seeker.jsp">   <button class="btn btn--radius-2 btn--blue" style="margin-left:auto;margin-right:auto;display:block;margin-bottom:10%"  type="submit">Edit</button></a></td>
                             </table>
                       		
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