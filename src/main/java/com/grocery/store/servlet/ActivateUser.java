package com.grocery.store.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.grocery.store.dao.AddUserDAO;

/**
 * Servlet implementation class ActivateUser
 */
public class ActivateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ActivateUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int userId = Integer.parseInt(request.getParameter("userId"));
		AddUserDAO au = new AddUserDAO();
		
		au.activateUser(userId);
		
		PrintWriter out = response.getWriter();
	    out.println("<html><body>");
	    out.println("<script type=\"text/javascript\">");
	    out.println("alert(\" Thanks for regitering with us! \");");
	    out.println("window.location.href='index.html'");
	    out.println("</script>");
	    out.println("</body></html>");
		
	}

}
