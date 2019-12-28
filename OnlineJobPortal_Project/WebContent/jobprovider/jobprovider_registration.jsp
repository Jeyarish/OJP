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
    <title>JobProvider Registration</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all">
    
    
        
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
    	else if (!(addressf.match(address))
    			{  
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

<body>
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">Registration Form</h2>
                    <form method="POST" name="form1" action="jobprovider_insert.jsp" onsubmit="return validate();">
                        <div class="row row-space">
                           
                                <div class="input-group">
                                    <label class="label">Enter Your Name</label>
                                    <input class="input--style-4" type="text" name="jobprovider_name">
                                     <font color="red"><span id="nameloc"></span></font>
                                </div>
                            </div>
                        <div class="row row-space">
                       
                               
                            </div>
                            
                                <div class="input-group">
                                    <label class="label">Gender</label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45">Male
                                            <input type="radio" checked="checked" name="jobprovider_gender" value="male">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">Female
                                            <input type="radio" name="jobprovider_gender" value="female">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                               
                              
                         <div class="input-group">
                            <label class="label">Address </label>
                            <input class="input--style-4" type="text" name="jobprovider_address" id="address" required/>
                             <font color="red"><span id="addressloc"></span></font>
                        </div>
                        
                       
                                <div class="input-group">
                                    <label class="label">Phone Number</label>
                                    <input class="input--style-4" type="text" name="jobprovider_phonenumber" required>
                                     <font color="red"><span id="phoneloc"></span></font>
                                </div>
                                 <div class="input-group">
                                <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue" type="submit">Register</button>
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
<!-- end document-->
    
    
    
    
    
    
