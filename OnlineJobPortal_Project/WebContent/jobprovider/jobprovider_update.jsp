<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.ojp.dto.*,com.ojp.bl.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


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
    
    <script>
    function validate()
    {
        	
        	var name=document.form1.jobprovider_name.value;
        	var addressf=document.form1.jobprovider_address.value;
        	var phone=document.form1.jobprovider_phonenumber.value;
        	
        	var phoneno = /^\d{10}$/;
        	var letters = /^[A-Za-z\s]+$/;
        	var address= /^[a-zA-Z0-9\s,.-]{3,}$/;
        	var valid = true;
        
        	if (name==null || name==""){  
        		 alert("Name can't be blank");  
        		  valid= false;  
        		}
        	else if(!(name.match(letters)))
        	{
        	document.getElementById("nameloc").innerHTML="name cannot be number"; 
        	valid = false;
        	}
        	if (addressf==null || addressf==""){  
        		document.getElementById("addressloc").innerHTML="address cannot be null"; 
        		valid = false; 
        		}
        	else if (!(addressf.match(address)){  
        		document.getElementById("addressloc").innerHTML="Enter valid address"; 
        		valid = false; 
        	}
        	if (phone==null || phone==""){  
        		document.getElementById("phoneloc").innerHTML="Phone number cannot be null"; 
        		valid = false; 
        		}
        	if(!(phone.match(phoneno)))
        		{
        		document.getElementById("phoneloc").innerHTML="Enter a valid phone number"; 
            	valid = false;
        		}
        		
        	return valid;
    }
    
    </script>


</head>
<body><div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-6">
                <div class="card-heading">
                    <h2 class="title">Your Profile</h2>
                    <div class="card-body">
                    <form method="POST" name="form1" action="jobprovider_submit_update.jsp" onsubmit="return validate();">
                        <div class="row row-space">
                           
                              
                        
                    <div class="form-row">
                            <div class="name">Id</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="jobprovider_id" value='<%= seeker.getJobprovider_id() %>' readonly>
                            </div>
                        </div>
                        
                        
                        
                         <div class="form-row">
                            <div class="name">Name</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="jobprovider_name" id="jobprovider_name" value='<%=provider.getJobprovider_name()%>'>
                                <font color="red"><span id="nameloc"></span></font>
                            </div>
                        </div>
                        
                        
                                               
                                
                                
                                <div class="form-row">
                            <div class="name">Gender</div>
                            <div class="value">
                               <%--  <input class="input--style-6" type="text" name="seeker_skilltype" value='<%=seeker.getSeeker_skilltype()%>'>  --%>
                                <select name="jobprovider_gender" required>
                                    <option disabled="disabled" selected="selected"><%=provider.getJobprovider_gender()%></option>
                                    <option value="male" <%if(provider.getJobprovider_gender().equals("male")){%>Selected<% } %>>Male</option>
                                    <option value="female" <%if(provider.getJobprovider_gender().equals("female")){%>Selected<% } %>>Female</option>
                                </select>
                            </div>
                        </div>
                               
                               
                               
                               <div class="form-row">
                            <div class="name">Address</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="jobprovider_address" value='<%=provider.getJobprovider_address() %>'>
                                <font color="red"><span id="addressloc"></span></font>
                            </div>
                        </div>
                               
                           
                                
                                <div class="form-row">
                            <div class="name">Phone Number</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="jobprovider_phonenumber" value='<%=provider.getJobprovider_phonenumber() %>'>
                                <font color="red"><span id="phoneloc"></span></font>
                            </div>
                        </div>
                                
                                
                                 <div class="form-row">                
                 <%--  <input class="input--style-6" type="submit" value="submit" > --%>
                  <button class="btn btn--radius-2 btn--blue" style="margin-left:auto;margin-right:auto;display:block;margin-bottom:10%"  type="submit">Submit</button>
                           
                        </div>
                         
                  </form>
                </div>
              </div>
                       
             </div>
           </div>
                        
                         
                       
     <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body>
</html>