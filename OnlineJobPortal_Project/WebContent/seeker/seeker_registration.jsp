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
    <title>Jobseeker Registration</title>

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
    
    
    <script>    
    function validate()
{
    	
    	var name=document.form1.seeker_name.value;
    	var addressf=document.form1.seeker_address.value;
    	var phone=document.form1.seeker_phonenumber.value;
    	var skill=document.form1.seeker_skilltype.value;
    	var exp=document.form1.seeker_experience.value;
    	var dist=document.form1.seeker_district.value;
    	
    	var phoneno = /^\d{10}$/;
    	var letters = /^[A-Za-z\s]+$/;
    	var address= /^[a-zA-Z0-9\s,.-]{3,}$/;
    	var valid = true;
    
    	if (name==null || name=="")
	    	{  
	    		document.getElementById("nameloc").innerHTML="name cannot be null"; 
	    		valid = false; 
	    	}
	    	else if(!(name.match(letters)))
		    	{
		    		document.getElementById("nameloc").innerHTML="name cannot be number"; 
		    		valid = false;
		    	}
		    	
    	if (skill==null || skill==" ")
    		{
	    		document.getElementById("skillloc").innerHTML="select a skill"; 
	    		valid = false; 
    		}
    	
    	
    	if (exp==null || exp==" ")
		{
    		document.getElementById("experienceloc").innerHTML="Enter your experience"; 
    		valid = false; 
		}
    	
    	if(dist==null || dist==" ")
    		{
    		document.getElementById("districtloc").innerHTML="Select your district"; 
    		valid = false;
    		
    		}
    	
    	if (addressf==null || addressf=="")
    	{  
    		document.getElementById("addressloc").innerHTML="address can't be null"; 
    		valid = false; 
    	}
    	else if (!(addressf.match(address)))
    	{  
    		document.getElementById("addressloc").innerHTML="Enter valid address"; 
    		valid = false; 
    	}
    	
    	
    	if(phone==null || phone=="")
    		{
    		document.getElementById("phoneloc").innerHTML=" phone number can't be null"; 
        	valid = false;
    		
    		}
    	else if(!(phone.match(phoneno)))
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
                    <form method="POST" name="form1" action="seeker_insert.jsp" onsubmit="return validate()">
                       
                       
                       
                          <div class="row row-space">                          
                                <div class="input-group">
                                    <label class="label">Enter Your Name</label>
                                    <input class="input--style-4" type="text" name="seeker_name" >
                                     <font color="red">*<span id="nameloc" style="visibility=:hidden"></span></font>
                                </div>
                            </div>
                       
                       
                        <div class="row row-space">
                               <div class="input-group">
                                    <label class="label">DOB</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4 js-datepicker" type="text" name="seeker_dob" >
                                        <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                         <font color="red"><span id="dobloc"></span></font>
                                    </div>
                                </div>
                           </div>
                            
                               
                               
                               
                               <div class="input-group">
                                    <label class="label">Gender</label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45">Male
                                            <input type="radio" checked="checked" name="gender" value="male">
                                            <span class="checkmark"></span>
                                            
                                        </label>
                                        
                                        <label class="radio-container">Female
                                            <input type="radio" name="gender" value="female">
                                            <span class="checkmark"></span>
                                          
                                        </label>
                                    </div>
                                </div>
                               
                               
                               
                               
                            
                            <div class="input-group">
                            <label class="label">Skill</label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="seeker_skilltype" >
                                    <option disabled="disabled" selected="selected" value=" ">Select Your Skill</option>
                                    <option value="carpenter">Carpenter</option>
                                    <option>Driver</option>
                                    <option>Gardener</option>
                                    <option>Sweeper</option>
                                </select>
                                <font color="red">*<span id="skillloc" style="visibility=:hidden"></span></font>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        
                        
                         <div class="input-group">
                            <label class="label">Experience</label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="seeker_experience" required>
                                    <option disabled="disabled" selected="selected" value=" ">Experience</option>
                                    <option>0-1 year</option>
                                    <option>1-2 years</option>
                                    <option>2-3 years</option>
                                    <option>4year or above</option>
                                </select>
                                <font color="red">*<span id="experienceloc" style="visibility=:hidden"></span></font>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                         
                        
                         <div class="input-group">
                            <label class="label">Address </label>
                            <input class="input--style-4" type="text" name="seeker_address" id="address" >
                            <font color="red"><span id="addressloc" style="visibility=:hidden"></span></font>
                        </div>
                        
                          
                          
                          <div class="input-group">
                            <label class="label">District</label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="seeker_district">
                                    <option disabled="disabled" selected="selected" value=" ">Select Your District</option>
                                    <option>Kasargode</option>
                                    <option>Kannur</option>
                                    <option>Kozhikode</option>
                                    <option>Vayanad</option>
                                    <option>Malappuram</option>
                                    <option>Palakkad</option>
                                    <option>Thrissur</option>
                                    <option>Ernakulam</option>
                                    <option>Kottayam</option>
                                    <option >Alappuzha</option>
                                    <option>Pathanamthitta</option>
                                    <option >Idukki</option>
                                   <option>Kollam</option>
                                   <option >Thiruvananthapuram</option>
                                </select>
                                <font color="red">*<span id="districtloc" style="visibility=:hidden"></span></font>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                       
                                
                                
                                <div class="input-group">
                                    <label class="label">Phone Number</label>
                                    <input class="input--style-4" type="text" name="seeker_phonenumber">
                                     <font color="red">*<span id="phoneloc"></span></font>
                                </div>
                                
                               
                                <div class="input-group">
                                    <label class="label">Wages</label>
                                    <div class="p-t-10">
                                     <label class="radio-container m-r-45">200/hour
                                            <input type="radio" checked="checked" name="seeker_wages" value="200/hr">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">250/hour
                                            <input type="radio" name="seeker_wages" value="250/hr">
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container">300/hour
                                            <input type="radio" name="seeker_wages" value="300/hr">
                                            <span class="checkmark"></span>
                                        </label>
                                        
                                    </div>
                                </div> 
                          
                           <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue" type="submit">Register</button>
                        </div>
                         
                         
                  </form>
                </div>
              </div>
                       
             </div>
           </div>
                        
                         
                       
     <!-- Jquery JS-->
    <script src="reg_template/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="reg_template/vendor/select2/select2.min.js"></script>
    <script src="reg_template/vendor/datepicker/moment.min.js"></script>
    <script src="reg_template/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="reg_template/js/global.js"></script>
</body>


</html>
<!-- end document-->