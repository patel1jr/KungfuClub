<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Stephanos Kung Fu Club | New Student</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<link rel="stylesheet" href="../layout/styles/layout.css" type="text/css" />
<link rel="stylesheet" href="../layout/styles/jquery-ui.css" type="text/css" />
<script type="text/javascript" src="../layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="../layout/scripts/jquery.ui.min.js"></script>
</script>
</head>
<body id="top">

<div class="wrapper row1">
  <div id="header" class="clear">
    <div class="fl_left">
      <h1><a href="../index.html">Stephanos Kung Fu Club</a></h1>
    </div>
    <div id="topnav">
      <ul>
       <li ><a href="../index.html">Home</a></li>
     <li><a href="newstudent.jsp">New Student</a></li>
        <li><a href="Attend">Attendance</a></li>
        <li><a href="StudentInfo.jsp">StudentInfo</a></li>
        <li ><a href="Fees.jsp">Fees</a></li>
        <li class="active"><a href="PurposeOfFees.jsp">Purpose Of Fees</a></li>
      <li><a href="a.jsp">Assign Rank</a></li>
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
     <%String message =  (String)request.getAttribute("message");%>
   
      <h2>Please complete below form and Submit to assign rank to student</h2>
      <div id="studentdiv">
     <div id="result" style="color:green"><% if(message != null){%> <%=message%> <%}%></div>
        <form id="studentForm" action="AssignRank" method="POST">
        <input type="hidden" id="countOfRequirements" name="countOfRequirements"></input>
        <input type="hidden" id="isAddClicked" value="true"></input>
        <div id= "studentInfo">
        <table>
         <tr>
         	<td ><label for="purposeOfFees"><small>Add Purpose Of Fees</small></label></td>
            <td ><input type="text" name="purposeOfFees" id="purposeOfFees" value="" size="22" required/></td>
          </tr>
          
           
         <tr>
         
         </tr>
          <tr>
          
          </tr>
           <tr >
          <td></td>
            <td><input name="submit" type="submit" id="submit" value="Submit Form"/></td>
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

</body>

</html>