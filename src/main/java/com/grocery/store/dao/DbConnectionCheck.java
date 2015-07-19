package com.grocery.store.dao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.grocery.store.common.Log4jLogger;

public class DbConnectionCheck extends HttpServlet {

	/**
	 * Default Serialized version for a hardware read servlet.
	 */
	private static final long serialVersionUID = 1L;
	
	/** 
	 * Logger for log messages. 
	 */
	private static final Log4jLogger LOG = Log4jLogger.getLogger(DbConnectionCheck.class.getName());

	public String checkDbConnection() {
		
		String dbConnected = "DataBase is NOT connected";
		
		Connection conn = null;
		try {
			conn = DbUtil.getConnection();
			
			if (conn != null) {
				dbConnected = "DataBase is connected";
			}
		} catch (Exception ex) {
			dbConnected = dbConnected + "and the errors are: " + ex.getMessage() ;
		} finally {
			DbUtil.closeConnection(conn);
		}
		return dbConnected;
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		try {
			
			// setting the content type
			response.setContentType("text/html");
			
			// get the stream to write the data
			PrintWriter printResponse = response.getWriter();

			String dbConnected = new DbConnectionCheck().checkDbConnection();
			
			printResponse.println("<html><title>");
			printResponse.println("Data Base Connection Check");
			printResponse.println("</title><body>");
			printResponse.println(dbConnected);
			printResponse.println("</body></html>");
			
			// closing the stream
			printResponse.close();
		} catch (Exception exp) {
			LOG.error("Exception in servlet DbConnectionCheck: " + exp);
		}
	}

	

	public static void main(String[] args) {
		// To check Whether we have connection established or not.
		System.out.println(new DbConnectionCheck().checkDbConnection());
	}

}
