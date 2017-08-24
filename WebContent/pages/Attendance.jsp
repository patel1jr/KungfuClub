<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="java.util.List" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Education Board | Style Demo</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="../layout/styles/layout.css" type="text/css" />
<link rel="stylesheet" href="../layout/styles/jquery-ui.css" type="text/css" />
<script type="text/javascript" src="../layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="../layout/scripts/jquery.ui.min.js"></script>
</head>
<body id="top">
<div class="wrapper row1">
  <div id="header" class="clear">
    <div class="fl_left">
      <h1><a href="../index.html">Education Board</a></h1>
      
    </div>
    <div id="topnav">
      <ul>
         <li ><a href="../index.html">Home</a></li>
     <li><a href="newstudent.jsp">New Student</a></li>
        <li class="active"><a href="Attend">Attendance</a></li>
        <li><a href="StudentInfo.jsp">StudentInfo</a></li>
        <li ><a href="Fees.jsp">Fees</a></li>
         <li><a href="PurposeOfFees.jsp">Purpose Of Fees</a></li>
      <li><a href="a.jsp">Assign Rank</a></li>
        <li><a href="ab.jsp">Rank</a></li>
       
      </ul>
    </div>
  </div>
</div>
 <%String message =  (String)request.getAttribute("message");
 String message1 =  (String)request.getAttribute("message1");
 List levelList = (List)request.getAttribute("levelList");
 %> 

<!-- ####################################################################################################### -->
<div class="wrapper row3">
  <div id="container" class="clear"> 
    <!-- ####################################################################################################### -->
  
 
  
    <div id="content">
   
      <h1>Welcome To Club.</h1>
    <h2>Please enter below details to add new Level</h2>
      
      <div id="studentdiv">
      <div id="result" style="color:green"><% if(message1 != null){%> <%=message1%> <%}%></div>
        <form id="levelForm" action="addlevel" method="GET">
        <div id= "addLevel">
        <table>
        <tr>
         	<td ><label for="levelname"><small>Level Name</small></label></td>
            <td ><input type="text" name="levelname" id="levelname" value="" size="22" required/></td>
          </tr>
          <tr>
            <td><label for="classStarttime"><small>Class Start Time</small></label></td>
            <td ><input type="text" name="classStarttime" id="classStarttime" value="" size="22" required/></td>
          </tr>
          <tr>
            <td><label for="classEndtime"><small>Class End Time</small></label></td>
            <td ><input type="text" name="classEndtime" id="classEndtime" value="" size="22" required/></td>
          </tr>
          <tr>
          <td></td>
           
            <td><input name="submit" type="submit" id="submit" value="Submit" /></td>
          </tr>
          </table>
          </div>
        </form>
      </div>


    
      <h2>Please enter below details to keep the attendance record</h2>
       
      <div id="studentdiv">
      <div id="result" style="color:green"><% if(message != null){%> <%=message%> <%}%></div>
        <form id="studentForm" action="ADDAttendance" method="GET">
        <div id= "studentInfo">
        <table>
        <tr>
         	<td ><label for="studentID"><small>Student ID</small></label></td>
            <td ><input type="text" name="studentID" id="studentID" value="" size="22" required/></td>
          </tr>
          <tr>
            <td><label for="classLevel"><small>Class Level</small></label></td>
            <td><select name="classLevel" id="classLevel" value="Beginner" required >
            		<%for(int i=0; i< levelList.size() ; i++){ %>
            		<option value = "Beginner"><%= levelList.get(i)%></option>
            		<%} %>
            	</select>
            </td>
          </tr>
<!--            <tr>
            <td><label for="classTime"><small>Class Time</small></label></td>
            <td><select name="classTime" id="classTime" value="10AM-11AM" required>
            		<option value = "10AM-11AM">10AM-11AM</option>
            		<option value="11AM-12PM">11AM-12PM</option>
            		<option value="12PM-1PM">12PM-1PM</option>
            	</select>
            </td>
          </tr> -->
          <tr>
            <td><label for="attendanceDate"><small>Attendance Date</small></label></td>
			<td><input type="text" name="attendanceDate" id="attendanceDate" value="" required/></td>
         </tr>
          <tr>
          <td></td>
           
            <td><input name="submit" type="submit" id="submit" value="Submit Form" /></td>
          </tr>
          </table>
          </div>
        </form>
      </div>
    </div>

    <!-- ####################################################################################################### --> 
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row4">
  <div id="footer" class="clear"> 
    <!-- ####################################################################################################### -->
    <div class="footbox">
      <h2>Quick Links</h2>
      <ul>
        <li><a href="#">&raquo; Homepage</a></li>
        <li><a href="#">&raquo; Contact Us</a></li>
        <li><a href="#">&raquo; Sitemap</a></li>
        <li><a href="#">&raquo; Privacy Policy</a></li>
        <li><a href="#">&raquo; Terms of Use</a></li>
        <li><a href="#">&raquo; Copyright Information</a></li>
        <li><a href="#">&raquo; Website Matters</a></li>
      </ul>
    </div>
    <div class="footbox">
      <h2>How To Find Us</h2>
      <address>	
      Address Line 1<br />
      Address Line 2<br />
      Town/City<br />
      Postcode/Zip<br />
      <br />
      Tel: xxxx xxxx xxxxxx<br />
      Email: <a href="#">contact@domain.com</a>
      </address>
    </div>
    <div class="fl_right">
      <div id="social">
        <h2>Connect With Us</h2>
        <ul>
          <li><a href="#"><img src="images/social/facebook.gif" alt="" /></a></li>
          <li><a href="#"><img src="images/social/twitter.gif" alt="" /></a></li>
          <li><a href="#"><img src="images/social/flickr.gif" alt="" /></a></li>
          <li><a href="#"><img src="images/social/youtube.gif" alt="" /></a></li>
          <li class="last"><a href="#"><img src="../images/social/rss.gif" alt="" /></a></li>
        </ul>
      </div>
      <div id="newsletter" class="clear">
        <form action="#" method="post">
          <fieldset>
            <legend>Subscribe To Our Newsletter:</legend>
            <input type="text" value="Enter Email Here&hellip;" onfocus="this.value=(this.value=='Enter Email Here&hellip;')? '' : this.value ;" />
            <input type="text" id="subscribe" value="Submit" />
          </fieldset>
        </form>
      </div>
    </div>
    <!-- ####################################################################################################### --> 
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper">
  <div id="copyright" class="clear">
    <p class="fl_left">Copyright &copy; 2014 - All Rights Reserved - <a href="#">Domain Name</a></p>
    <p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
  </div>
</div>

<script>
$(function () {
	
	 $('#attendanceDate').datepicker();
	
	 
   
});
// Attach a submit handler to the form
/* $("#classLevel" ).change(function( event ) {
	if($("#classLevel").val() == 'Beginner' ){
		$("#classTime option:first-child").text("10AM-11AM").val("10AM-11AM");
		$("#classTime option:nth-child(2)").text("11AM-12PM").val("11AM-12PM");
		$("#classTime option:nth-child(3)").text("12PM-1PM").val("12PM-1PM");
	}else if($("#classLevel").val() == 'Intermediate'){
		$("#classTime option:first-child").text("2PM-3PM").val("2PM-3PM");
		$("#classTime option:nth-child(2)").text("3PM-4PM").val("3PM-4PM");
		$("#classTime option:nth-child(3)").text("4PM-5PM").val("4PM-5PM");
	}else if($("#classLevel").val() == 'Advanced'){
		$("#classTime option:first-child").text("5PM-6PM").val("5PM-6PM");
		$("#classTime option:nth-child(2)").text("6PM-7PM").val("6PM-7PM");
		$("#classTime option:nth-child(3)").text("7PM-8PM").val("7PM-8PM");
	}
}); */


</script>

</body>
</html>