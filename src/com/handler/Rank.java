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
 * Servlet implementation class Rank
 */

public class Rank extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public List<String> requirements=new ArrayList<String>();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Rank() {
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
        request.getRequestDispatcher("Rank.jsp").forward(request, response);
	 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String count=request.getParameter("countOfRequirements");
		for(int i=0;i<=Integer.parseInt(count);i++)
		{
			//adding requirements to the list
			requirements.add(request.getParameter("requirement["+i+"]"));
		}
		//getting all the form input parameters
		String rankName=request.getParameter("rankName");
		String beltColor=request.getParameter("beltColor");
		String requiredRank=request.getParameter("requiredRank");
		
		
		//if insert is successful
		String message = "Rank added successfully";
		 response.setContentType("text/html");
		  
		  request.setAttribute("message", message);
		  RequestDispatcher view = request.getRequestDispatcher("Rank.jsp");
		  view.forward(request, response);
	}

}
