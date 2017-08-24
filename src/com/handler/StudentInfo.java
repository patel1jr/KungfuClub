package com.handler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class StudentInfo
 */
@WebServlet("/StudentInfo")
public class StudentInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String message;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println(request.getAttribute("studentID"));
		  message = "Record added successfully";
		   response.setContentType("text/html");
		   //response.addHeader("message", message);
		   request.setAttribute("message", "Please find below Student Details");
		   Student st = new Student();
		   st.setFname("Ravneet Kaur");
		   st.setLname("Sidhu");
		   st.setAddressl1("3015 Sandwich");
		   st.setCity("Windsor");
		   st.setCountry("Canada");
		   st.setDateofbirth("02-Dec-1990");
		   request.setAttribute("studentDetails", st);
		  RequestDispatcher view = request.getRequestDispatcher("StudentInfo.jsp");
		  view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
