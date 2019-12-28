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
    
    
   <script>    
    function validate()
   {
    	
    	var name=document.form1.seeker_name.value;
    	var addressf=document.form1.seeker_address.value;
    	var phone=document.form1.seeker_phonenumber.value;
    	
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
		    	
    	
    	if (addressf==null || addressf=="")
	    	{  
	    		document.getElementById("addressloc").innerHTML="address can't be null"; 
	    		valid = false; 
	    	}
	    	else if (!(addressf.match(address)))
		    	{  
		    		document.getElementById("addressloc").innerHTML="Enter valid address(must have minimum 3 characters)"; 
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
						
	<%
String userid=(String)session.getAttribute("userid");
 JobseekerDTO seeker=SeekerBL.getSeeker(userid);
	
	{
	%>
	<body>
    <div class="page-wrapper bg-dark p-t-100 p-b-50">
        <div class="wrapper wrapper--w900">
            <div class="card card-6">
                <div class="card-heading">
                    <h2 class="title">Your Profile</h2>
                </div>
                <div class="card-body">
                    <form method="POST" name="form1" onsubmit="return validate()" action="seeker_submit_update.jsp">
                    <div class="form-row">
                            <div class="name">Id</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="seeker_id" value='<%= seeker.getSeeker_id() %>' readonly>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Name</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="seeker_name" id="seeker_name" value='<%=seeker.getSeeker_name()%>'>
                                <font color="red"><span id="nameloc"></span></font>
                            </div>
                        </div>

                       
                                                                    
                        
                        <div class="form-row">
                            <div class="name">Date of birth</div>
                            <div class="value">
                                <input class="input--style-6 js-datepicker" type="text" name="seeker_dob" value='<%=seeker.getSeeker_dob()%>'>
                                <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                <font color="red"><span id="dobloc"></span></font>
                            </div>
                        </div>
                        
                        

                       
                       
                    <%--     <div class="form-row">
                            <div class="name">Gender</div>
                            <div class="value">
                              <%--  <input class="input--style-6" type="text" name="seeker_gender" value='<%=seeker.getSeeker_gender()%>'>  
                                <label class="radio-container m-r-45">Male
                                            <input type="radio" checked="checked" name="gender" value="male">
                                            <span class="checkmark"></span>
                                            
                                        </label>
                                        
                                        <label class="radio-container">Female
                                            <input type="radio" name="gender" value="female">
                                            <span class="checkmark"></span>
                                            </label>
                                
                            </div>
                        </div> --%>
                        
                        
                        <div class="form-row">
                            <div class="name">Gender</div>
                            <div class="value">
                               <%--  <input class="input--style-6" type="text" name="seeker_skilltype" value='<%=seeker.getSeeker_skilltype()%>'>  --%>
                                <select name="seeker_gender" required>
                                    <option disabled="disabled" selected="selected"><%=seeker.getSeeker_gender()%></option>
                                    <option value="male" <%if(seeker.getSeeker_gender().equals("male")){%>Selected<% } %>>Male</option>
                                    <option value="female" <%if(seeker.getSeeker_gender().equals("female")){%>Selected<% } %>>Female</option>
                                </select>
                            </div>
                        </div>
                                    

                       
                       
                        <div class="form-row">
                            <div class="name">Skill Type</div>
                            <div class="value">
                               <%--  <input class="input--style-6" type="text" name="seeker_skilltype" value='<%=seeker.getSeeker_skilltype()%>'>  --%>
                                <select name="seeker_skilltype" required>
                                    <option disabled="disabled" selected="selected"><%=seeker.getSeeker_skilltype()%></option>
                                    <option value="carpenter" <%if(seeker.getSeeker_skilltype().equals("carpenter")){%>Selected<% } %>>Carpenter</option>
                                    <option value="driver" <%if(seeker.getSeeker_skilltype().equals("driver")){%>Selected<% } %>>Driver</option>
                                    <option value="gardener" <%if(seeker.getSeeker_skilltype().equals("gardener")){%>Selected<% } %>>Gardener</option>
                                    <option value="sweeper" <%if(seeker.getSeeker_skilltype().equals("sweeper")){%>Selected<% } %>>Sweeper</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>


                        <div class="form-row">
                            <div class="name">Experience</div>
                            <div class="value">
                               <%-- <input class="input--style-6" type="text" name="seeker_experience" value='<%=seeker.getSeeker_experience()%>'>--%> 
                                <select name="seeker_experience" required>
                                    <option disabled="disabled" selected="selected"><%=seeker.getSeeker_experience()%></option>
                                    <option >0-1 year</option>
                                    <option>1-2 years</option>
                                    <option>2-3 years</option>
                                    <option>4year or above</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        


                        <div class="form-row">
                            <div class="name">Address</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="seeker_address" value='<%=seeker.getSeeker_address() %>'>
                                <font color="red"><span id="addressloc"></span></font>
                            </div>
                        </div>


                        <div class="form-row">
                            <div class="name">District</div>
                            <div class="value">
                              <%--   <input class="input--style-6" type="text" name="seeker_district" value='<%=seeker.getSeeker_district() %>'> --%>
                                
                                <select name="seeker_district">
                                    <option disabled="disabled" selected="selected"><%=seeker.getSeeker_district() %></option>
                                    <option>Kasargode</option>
                                    <option>Kannur</option>
                                    <option>Kozhikode</option>
                                    <option>Vayanad</option>
                                    <option>Malappuram</option>
                                    <option>Palakkad</option>
                                    <option>Thrissur</option>
                                    <option>Ernakulam</option>
                                    <option>Kottayam</option>
                                    <option>Alappuzha</option>
                                    <option>Pathanamthitta</option>
                                    <option>Idukki</option>
                                    <option>Kollam</option>
                                    <option>Thiruvananthapuram</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="name">Phone Number</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="seeker_phonenumber" value='<%=seeker.getSeeker_phonenumber() %>'>
                                <font color="red"><span id="phoneloc"></span></font>
                            </div>
                        </div>
                       
                       
                      
                        
                        
                        
                    <div class="form-row">
                            <div class="name">Wages</div>
                            <div class="value">
                               <%-- <input class="input--style-6" type="text" name="seeker_experience" value='<%=seeker.getSeeker_experience()%>'>--%> 
                                <select name="seeker_wages" required>
                                    <option disabled="disabled" selected="selected"><%=seeker.getSeeker_wages()%></option>
                                    <option >200/hr</option>
                                    <option>250/hr</option>
                                    <option>300/hr</option>
                                    
                                </select>
                                <div class="select-dropdown"></div>
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
    <%
	}
    %>
</body>
</html>