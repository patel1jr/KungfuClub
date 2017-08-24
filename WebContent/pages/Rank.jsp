<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
     <li ><a href="newstudent.jsp">New Student</a></li>
        <li><a href="Attend">Attendance</a></li>
        <li><a href="StudentInfo.jsp">StudentInfo</a></li>
        <li ><a href="Fees.jsp">Fees</a></li>
         <li><a href="PurposeOfFees.jsp">Purpose Of Fees</a></li>
      <li ><a href="a.jsp">Assign Rank</a></li>
        <li class="active"><a href="ab.jsp">Rank</a></li>
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
      
      <h2>Please complete below form and Submit to add new Rank</h2>
      <div id="studentdiv">
      <div id="result" style="color:green"><% if(message != null){%> <%=message%> <%}%></div>
        <form id="studentForm" action="Rank" method="POST">
        <input type="hidden" id="countOfRequirements" name="countOfRequirements"></input>
        <input type="hidden" id="isAddClicked" value="true"></input>
        <div id= "studentInfo">
        <table>
        <tr>
         	<td ><label for="rankName"><small>Rank Name</small></label></td>
            <td ><input type="text" name="rankName" id="rankName" value="" size="22" required/></td>
          </tr>
          <tr>
          <td ><label for="RequiredRank"><small>Required Rank</small></label></td>
          <td>
          <select name="requiredRank">
         
                <c:forEach var="rank" items="${ranks}">
           	         <option><c:out value="${rank}"/></option>
                </c:forEach>           
</select>
</td>
          </tr>
          <tr>
            <td><label for="beltColor"><small>Belt Color</small></label></td>
			<td><input type="text" name="beltColor" id="beltColor" value="" required/></td>
          </tr>
          <tr>
            <td><label for="requirement"><small>Enter Requirement</small></label></td>
           
         <td><button name="add" value="add" id="addRequirement" onclick="addclick();">Add</button>	</td>
        <tr>
        <td></td>
            <td><input name="requirement" type="text" id="requirement" value="" required /> 
            </tr>
            <tr>
            <td></td>
            <td>
            <table id="tbleRequirements" style="border:none;">
         
         </table>          	
           </td>
           
          </tr>
         <tr>
         
         </tr>
          <tr>
          
          </tr>
           <tr >
          <td></td>
            <td><input name="submit" type="submit" id="submit" value="Submit Form" onclick="submitClick();"/></td>
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
	 $('#paymentDate').datepicker(); 
	
	
});
document.getElementById('studentForm').onsubmit = function() {
	var isAddclick=document.getElementById("isAddClicked").value;
	if(isAddclick=="true"){
		return false;
	}
	else
		{
		return true;
		}
    
};

function submitClick()
{
	document.getElementById("isAddClicked").value="false";
	}
function addclick() { 
	var table = document.getElementById("tbleRequirements");
	var rowCount = table.rows.length;
    var row = table.insertRow(rowCount);
  
   
    var cell1 = row.insertCell(0);
    var requirementNo = document.createElement("input");
    requirementNo.type = "text";
    requirementNo.name = "requirement[" + rowCount + "]";
    cell1.appendChild(requirementNo);
     document.getElementById("countOfRequirements").value=rowCount;
     document.getElementById("isAddClicked").value="true";
     return false;
	}

</script>

</script>

</body>
</html>