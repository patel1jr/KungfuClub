package com.handler;

//Import required java libraries
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class HelloWorld extends HttpServlet {

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
	System.out.println("******in servlet**********");
   // Set response content type
   String name = request.getParameter("name");
   String mobile = request.getParameter("mobile");
   String email = request.getParameter("email");
   String address = request.getParameter("address");
   String joiningDate = request.getParameter("joiningDate");
   String dateofbirth = request.getParameter("dob");
   String isadult = request.getParameter("isadult");
   String fatherName = request.getParameter("fatherName");
   String fathermobile = request.getParameter("fathermobile");
   String fatheremail = request.getParameter("fatheremail");
   String motherName = request.getParameter("motherName");
   String mothermobile = request.getParameter("mothermobile");
   String motheremail = request.getParameter("motheremail");
   String isparentStudent = request.getParameter("isparentStudent");
   
   System.out.println("name"+name);
   System.out.println("mobile"+mobile);
   System.out.println("email"+email);
   System.out.println("address"+address);
   System.out.println("joiningDate"+joiningDate);
   System.out.println("dateofbirth"+dateofbirth);
   System.out.println("isadult"+isadult);
   System.out.println("fatherNameame"+fatherName);
   System.out.println("fathermobile"+fathermobile);
   System.out.println("fatheremail"+fatheremail);
   System.out.println("fathermobile"+fathermobile);
   System.out.println("motherName"+motherName);
   System.out.println("mothermobile"+mothermobile);
   System.out.println("motheremail"+motheremail);
   System.out.println("isparentStudent"+isparentStudent);
   message = "Record added successfully";
   response.setContentType("text/html");
   //response.addHeader("message", message);
   request.setAttribute("message", "Student ID added successfully");
   request.setAttribute("studentId", "23123123");
  RequestDispatcher view = request.getRequestDispatcher("newstudent.jsp");
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