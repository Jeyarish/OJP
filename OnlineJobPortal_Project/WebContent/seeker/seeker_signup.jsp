<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>job seeker sign up page</title>

    <!-- Icons font CSS-->
    <link href="reg_template/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="reg_template/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="reg_template/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="reg_template/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="reg_template/css/main.css" rel="stylesheet" media="all">
    
    
    
    
    
    <script >
    
    
    function validate()
    {
        	
        	var uname=document.form1.username.value;
        	var pass=document.form1.password.value;
        	
        	var password = /^[A-Za-z0-9]{3,6}$/;
        	var username=/^[a-zA-z0-9]{3,6}$/;
        	var valid = true;
        
        	if (uname==null || uname=="")
        	{  
        		document.getElementById("unameloc").innerHTML="name cannot be null"; 
        		valid = false; 
        	}
        	else if(!(uname.match(username)))
        	{
        		document.getElementById("unameloc").innerHTML="enter the valid username minimum of three characters"; 
        		valid = false;
        	}
        	
        	if (pass==null || pass=="")
        	{  
        		document.getElementById("passloc").innerHTML="password cannot be null"; 
        		valid = false; 
        	}
        	else if(!(pass.match(password)))
        		{
        		  document.getElementById("passloc").innerHTML="Enter the valid password minimum of 3 characters";
        		}
        	
        	return valid;
 }  	
  
    
</script>
    
    
</head>

<body>
<%String seeker_id= (String)session.getAttribute("seeker_id"); 
	String message = (String)session.getAttribute("message");
%>
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">job seeker sign-up</h2>
                    <form method="POST" name="form1" onsubmit="return validate()" action="user_insert.jsp">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">your id is</label>
                                    <input class="input--style-4" type="text" name="id" value='<%=seeker_id %>'>
                                </div>
                            </div>
                           <div><%= message %></div>
                        </div>
                        <div class="row row-space">
                         <div class="col-2">
                                <div class="input-group">
                                    <label class="label">set user name</label>
                                    <input class="input--style-4" type="text" name="username">
                                    <font color="red"><span id="unameloc"></span></font>
                                </div>
                            </div>
                            </div>
                            <div class="col-2">
                            <div class="input-group">
                                    <label class="label">set password</label>
                                    <input class="input--style-4" type="password" name="password">
                                    <font color="red"><span id="passloc"></span></font>
                                </div>
                               
                            </div>
                                                               
                        <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue" type="submit">SignUp</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
 <%session.setAttribute("message", " "); %>

    <!-- Jquery JS-->
    <script src="reg_template/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="reg_template/vendor/select2/select2.min.js"></script>
    <script src="reg_template/vendor/datepicker/moment.min.js"></script>
    <script src="reg_template/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="reg_template/js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->