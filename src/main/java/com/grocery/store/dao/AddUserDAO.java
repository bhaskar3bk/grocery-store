package com.grocery.store.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.grocery.store.common.Log4jLogger;
import com.grocery.store.vo.UserVO;

public class AddUserDAO {

	private static final Log4jLogger LOG = Log4jLogger.getLogger(AddUserDAO.class.getName());

	public boolean addUser(UserVO user) {

		boolean userAdded = false;
		Connection conn = null;
		try {

			conn = DbUtil.getConnection();

			if (conn != null) {
				String sqlQuery = "INSERT INTO USER_INFO"
						+ " (FIRST_NAME, LAST_NAME, EMAIL_ID, CONTACT_NUMBER, PASSWORD"
						+ ") VALUES (?,?,?,?,?)";

				PreparedStatement preparedStatement = conn.prepareStatement(sqlQuery);

				preparedStatement.setString(1, user.getFirstName());
				preparedStatement.setString(2, user.getLastName());
				preparedStatement.setString(3, user.geteMail());
				preparedStatement.setString(4, user.getPhone());
				preparedStatement.setString(5, user.getPassword());

				preparedStatement.executeQuery();
				userAdded = true;
			}

		} catch (Exception exp) {
			LOG.error("Exception in addUser method of AddUser: " + exp.getMessage());
		} finally {
			DbUtil.closeConnection(conn);
		}

		return userAdded;
	}
	
	public String userExists(String phone, String emailId){
		
		Connection con = null;
		PreparedStatement ps;
		ResultSet resultSet = null;
		
		String checkForPhone = "SELECT ID FROM USER_INFO WHERE CONTACT_NUMBER = ?";
		String checkForMailAddress = "SELECT ID FROM USER_INFO WHERE EMAIL_ID = ?";
		
		try{
			con = DbUtil.getConnection();
			ps = con.prepareStatement(checkForPhone);
			ps.setString(1, phone);
			
			resultSet = ps.executeQuery();
			
			if(resultSet.next()){
				return "Phone";
			}
			
			ps = con.prepareStatement(checkForMailAddress);
			ps.setString(1,emailId);
			
			resultSet = ps.executeQuery();
			
			if(resultSet.next()){
				return "EMail";
			}
			
		}catch(Exception e){
			e.printStackTrace();
			LOG.error(e.getMessage());
		}finally{
			DbUtil.closeConnection(con);
		}
		return "OK";
	}
	
	public void activateUser(int userId){
		Connection con = null;
		PreparedStatement ps;
		ResultSet resultSet = null;
		String query = "UPDATE USER_INFO SET ACTIVE = 1 WHERE ID = ?";
		
		con = DbUtil.getConnection();
		try {
			ps = con.prepareStatement(query);
			ps.setInt(1, userId);
			
			resultSet = ps.executeQuery();
			LOG.info("Activated the user " + userId + "successfully!");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DbUtil.closeConnection(con);
		}
	}
	
	public int getUserId(String emailId){
		Connection con = null;
		PreparedStatement ps;
		ResultSet resultSet = null;
		int id = 0;
		String query = "SELECT ID FROM USER_INFO WHERE EMAIL_ID = ?";
		
		con = DbUtil.getConnection();
		try {
			ps = con.prepareStatement(query);
			ps.setString(1, emailId);
			
			resultSet = ps.executeQuery();
			
			if(resultSet.next()){
				id = resultSet.getInt("ID");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DbUtil.closeConnection(con);
		}
		return id;
	}
}
