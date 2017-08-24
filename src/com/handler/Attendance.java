package com.handler;

//Import required java libraries
import java.io.*;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.*;
import javax.servlet.http.*;

public class Attendance extends HttpServlet {

/**
	 * 
	 */
private static final long serialVersionUID = 1L;
private String message;

public void init() throws ServletException
{
   // Do required initialization
   message = "Hello World";
}

public void doGet(HttpServletRequest request,
                 HttpServletResponse response)
         throws ServletException, IOException
{
	
	StringBuffer requestURL = request.getRequestURL();
	System.out.println("******in servlet*********URL*"+requestURL);
	
		List<String> levelList = new ArrayList<String>();
		levelList.add("Begineer 10am - 12am");
		levelList.add("Intermediate 1pm - 3pm");
		levelList.add("Advanced 3pm - 6pm");
		request.setAttribute("levelList", levelList);
	

   String studentID = request.getParameter("studentID");
   String classLevel = request.getParameter("classLevel");
   String classTime = request.getParameter("classTime");
   String attendanceDate = request.getParameter("attendanceDate");

   
   System.out.println("studentID"+studentID);
   System.out.println("classlevel"+classLevel);
   System.out.println("classtime"+classTime);
   System.out.println("attendanceDate"+attendanceDate);
  
   message = "Attendance added successfully";
   response.setContentType("text/html");
   //response.addHeader("message", message);
   request.setAttribute("message", message);

  RequestDispatcher view = request.getRequestDispatcher("Attendance.jsp");
  view.forward(request, response);
    //Actual logic goes here.
  // PrintWriter out = response.getWriter();
  // out.println("<h1>" + message + "</h1>");
}

public void destroy()
{
   // do nothing.
}
}