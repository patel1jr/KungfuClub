package com.handler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Fees
 */
@WebServlet("/Fees")
public class Fees extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * Default constructor. 
     */
    public Fees() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		   
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//getting all the form input parameters
		System.out.println("******in servlet**********");
		   // Set response content type
		   String studentID = request.getParameter("studentID");
		   String paymentDate = request.getParameter("paymentDate");
		   String purposeOfPayment = request.getParameter("purposeOfPayment");
		   String amount = request.getParameter("amount");
		   String comment = request.getParameter("comment");
		   
		   System.out.println("studentID"+studentID);
		   System.out.println("paymentDate"+paymentDate);
		   System.out.println("purposeOfPayment"+purposeOfPayment);
		   System.out.println("amount"+amount);
	
		   
		   //if insert is successful
		   String message = "Fees Record added successfully";
	       response.setContentType("text/html");
				  
		   request.setAttribute("message", message);
		   RequestDispatcher view = request.getRequestDispatcher("Fees.jsp");
		   view.forward(request, response);
	
	
	}

}
