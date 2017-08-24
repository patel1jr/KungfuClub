<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.List" %>
    <%@ page import="com.handler.Student" %>
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
      <li><a href="../index.html">Home</a></li>
     <li><a href="newstudent.jsp">New Student</a></li>
        <li><a href="Attend">Attendance</a></li>
        <li class="active"><a href="StudentInfo.jsp">StudentInfo</a></li>
        <li ><a href="Fees.jsp">Fees</a></li>
         <li><a href="PurposeOfFees.jsp">Purpose Of Fees</a></li>
      <li ><a href="a.jsp">Assign Rank</a></li>
        <li><a href="ab.jsp">Rank</a></li>
      </ul>
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row3">
  <div id="container" class="clear"> 
    <!-- ####################################################################################################### -->
    <div id="content">
    <%String message =  (String)request.getAttribute("message"); %>
    <%Student studentData = (Student)request.getAttribute("studentDetails"); %>
      <h1>Welcome To Club.</h1>
      <h2>Please enter Student ID to get Student record</h2>
      
      <div id="studentdiv">
      <div id="result" style="color:green"><% if(message != null){%> <%=message%> <%}%></div>
        <form id="studentForm" action="StudentInfo" method="GET">
        <div id= "studentInfo">
        <table>
        <tr>
         	<td ><label for="studentID"><small>Student ID</small></label></td>
            <td ><input type="text" name="studentID" id="studentID" value="" size="22" required/></td>
          </tr>
          <tr>
          <td></td>
           
            <td><input name="submit" type="submit" id="submit" value="Submit Form" /></td>
          </tr>
          </table>
          </div>
        </form>
      </div>
      <div id="studentdetails">
      <form action="updateStudentInfo" method="get">
      	<%if(studentData != null ){ %>
  		<table  style="color:purple;border-style:groove; height:150px;width:350px" background="3.jpg">
        
        <tr>
            <td style="color:black;background-color:#c5c6c9;;" class="auto-style3">Student ID:</td>
            <td class="auto-style4">
                <input id="Text1" type="text" name="studentID" readonly value="<%=studentData.getStudentID() %>"/></td>
        </tr>
        <tr>
            <td style="color:black;background-color:#c5c6c9;;" class="auto-style3">First Name:</td>
            <td class="auto-style4">
                <input id="Text2" type="text" name="fname" value="<%=studentData.getFname()%>"/></td>
        </tr>
        <tr>
            <td style="color:black;background-color:#c5c6c9;;" class="auto-style3">Last Name:</td>
            <td class="auto-style4">
                <input id="Text11" type="text" name="lname" value="<%=studentData.getLname()%>"/></td>
        </tr>
        <tr>
             <td style="color:black;background-color:#c5c6c9;;" class="auto-style3">Address:</td>
            <td class="auto-style4">
                <input id="Text3" type="text" name="addressl1" value="<%=studentData.getAddressl1()%>" /></td>
        </tr>
        <tr>
             <td style="color:black;background-color:#c5c6c9;;" class="auto-style3">City:</td>
            <td class="auto-style4">
                <input id="Text12" type="text" name="city" value="<%=studentData.getCity()%>" /></td>
        </tr>
        <tr>
             <td style="color:black;background-color:#c5c6c9;;" class="auto-style3">Province:</td>
            <td class="auto-style4">
                <input id="Text13" type="text" name="province" value="<%=studentData.getProvince()%>" /></td>
        </tr>
        <tr>
             <td style="color:black;background-color:#c5c6c9;;" class="auto-style3">Country:</td>
            <td class="auto-style4">
                <input id="Text14" type="text" name="country" value="<%=studentData.getCountry()%>" /></td>
        </tr>
        <tr>
             <td style="color:black;background-color:#c5c6c9;;" class="auto-style3">Postal Code:</td>
            <td class="auto-style4">
                <input id="Text15" type="text" name="postalcode" value="<%=studentData.getPostalcode()%>" /></td>
        </tr>
        <tr>
             <td style="color:black;background-color:#c5c6c9;;" class="auto-style3">Email:</td>
            <td class="auto-style4">
                <input id="Text4" type="email" name="email" value="<%=studentData.getEmail() %>" /></td>
        </tr>
        <tr>
            <td style="color:black;background-color:#c5c6c9;;" class="auto-style3">Mobile:</td>
            <td class="auto-style4">
                <input id="Text5" type="number" name="mobile" value="<%=studentData.getMobile() %>" /></td>
        </tr>
        <tr>
           <td style="color:black;background-color:#c5c6c9;;" class="auto-style3">Date of Birth:</td>
            <td class="auto-style4">
                <input id="Text6" type="text" name="dateofbirth" value="<%=studentData.getDateofbirth() %>" ></td>
        </tr>
        <tr>
             <td style="color:black;background-color:#c5c6c9;;" class="auto-style3">Joining Date:</td>
            <td class="auto-style4">
                <input id="Text7" type="text" name="joiningDate" value="<%=studentData.getJoiningDate() %>"/></td>
        </tr>
        <%if(!studentData.isIsadult()) {%>
        <tr>
             <td style="color:black;background-color:#c5c6c9;;" class="auto-style3">Father Name:</td>
            <td class="auto-style4">
                <input id="Text8" type="text" name="fathername" value="<%=studentData.getFatehername() %>" /></td>
        </tr>
        <tr>
             <td style="color:black;background-color:#c5c6c9;;" class="auto-style3">Father Email:</td>
            <td class="auto-style4">
                <input id="Text9" type="emails" name="fatheremail" value="<%=studentData.getFatheremail() %>"/></td>
        </tr>
        <tr>
             <td style="color:black;background-color:#c5c6c9;;" class="auto-style3">Father Mobile:</td>
            <td class="auto-style4">
                <input id="Text10" type="number" name="fathermobile" value="<%=studentData.getFathermobile() %>"/></td>
        </tr>
        <tr>
             <td style="color:black;background-color:#c5c6c9;;" class="auto-style3">Mother Name:</td>
            <td class="auto-style4">
                <input id="Text8" type="text" name="mothername" value="<%=studentData.getMothername()%>" /></td>
        </tr>
        <tr>
             <td style="color:black;background-color:#c5c6c9;;" class="auto-style3">Mother Email:</td>
            <td class="auto-style4">
                <input id="Text9" type="email" name="motheremail"  value="<%=studentData.getMotheremail() %>"/></td>
        </tr>
        <tr>
             <td style="color:black;background-color:#c5c6c9;;" class="auto-style3">Mother Mobile:</td>
            <td class="auto-style4">
                <input id="Text10" name="mothermobile" type="number" value="<%=studentData.getMothermobile() %>"/></td>
        </tr>
       <tr><td></td><td>
       <input name="submit" type="submit" id="submit" value="Update" />
       </td></tr>
       <%}
        }%>
    	</table>
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
	
	 $('#Text6').datepicker();
	 $('#Text7').datepicker();
	 
	 
   
});
// Attach a submit handler to the form



</script>

</body>
</html>