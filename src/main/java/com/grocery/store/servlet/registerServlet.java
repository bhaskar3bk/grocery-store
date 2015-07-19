package com.grocery.store.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.grocery.store.dao.AddAddressDAO;
import com.grocery.store.dao.AddUserDAO;
import com.grocery.store.util.SendEmail;
import com.grocery.store.vo.AddressVO;
import com.grocery.store.vo.UserVO;

/**
 * Servlet implementation class registerServlet
 */
@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public registerServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		UserVO user = new UserVO();
		AddressVO address = new AddressVO();
		AddUserDAO au = new AddUserDAO();

		user.setFirstName(		(String) request.getParameter("inputFirstName")	);
		user.setLastName(		(String) request.getParameter("inputLastName")	);
		user.seteMail(			(String) request.getParameter("inputEMail")		);
		user.setPhone(			(String) request.getParameter("inputPhone")		);
		user.setPassword(		(String) request.getParameter("inputPassword1")	);
		
		
		address.setFirstLine(	(String) request.getParameter("firstLine")		);
		address.setSecondLine(	(String) request.getParameter("secondLine")		);
		address.setThirdLine(	(String) request.getParameter("thirdLine")		);
		address.setCity(		(String) request.getParameter("inputCity")		);
		address.setPinCode(		(String) request.getParameter("inputPostCode")	);
		address.setState(		(String) request.getParameter("inputState")		);
		address.setContactNumber(user.getPhone());
		
		
		try{
			String status = au.userExists(user.getPhone(), user.geteMail()); //check if the user already exists using his phone/email

			if(status.equalsIgnoreCase("OK")){
				au.addUser(user);
				
				int userId = au.getUserId(user.geteMail());
				
				if(address.getFirstLine() != null && address.getCity() != null && address.getPinCode() != null && address.getState() != null)
					new AddAddressDAO().addAddress(address, userId);
				
				if(userId != 0){
					SendEmail.sendEmail(user.geteMail(), userId);
				}
				
				PrintWriter out = response.getWriter();
			    out.println("<html><body>");
			    out.println("<script type=\"text/javascript\">");
			    out.println("alert(\" Please verify the email sent to your registered email ID \");");
			    out.println("window.location.href='index.html'");
			    out.println("</script>");
			    out.println("</body></html>");
			    
			}else{
				
				System.out.println(status + " is already regisered!");
				PrintWriter out = response.getWriter();
			    out.println("<html><body>");
			    out.println("<script type=\"text/javascript\">");
			    out.println("alert(\" User already exists! \");");
			    out.println("window.location.href='index.html'");
			    out.println("</script>");
			    out.println("</body></html>");
			    
			}
		}catch(Exception e){
			//TODO:yet to determine
			e.printStackTrace();
			
			PrintWriter out = response.getWriter();
		    out.println("<html><body>");
		    out.println("<script type=\"text/javascript\">");
		    out.println("alert(e.printStackTrace());");
		    out.println("window.location.href='index.html'");
		    out.println("</script>");
		    out.println("</body></html>");
		}
	}
}
