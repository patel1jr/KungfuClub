package com.handler;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AssignRank
 */

public class AssignRank extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssignRank() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<String> list = new ArrayList<>();
	    list.add("item1");
	    list.add("item2");
	    list.add("item3");
	  
	    request.setAttribute("ranks", list);
        request.getRequestDispatcher("AssignRank.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String studentID=request.getParameter("studentID");
		String rankName=request.getParameter("requiredRank");
		String dateOfUpgrade=request.getParameter("dateOfUpgrade");
		
		  //if insert is successful
		   String message = "Rank assigned added successfully";
	       response.setContentType("text/html");
				  
		   request.setAttribute("message", message);
		   RequestDispatcher view = request.getRequestDispatcher("AssignRank.jsp");
		   view.forward(request, response);
	}

}
