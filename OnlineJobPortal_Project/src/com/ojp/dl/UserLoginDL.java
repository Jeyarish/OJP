package com.ojp.dl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.ojp.dto.UserLoginDTO;
public class UserLoginDL 
      {

		public static int adduser(UserLoginDTO user) 
		  {
			int output = 0;
			String query;
			PreparedStatement ps = null;
			Connection con;
			try {
				con = DBHelper.getConnection();
				query = "INSERT INTO user_login VALUES(?,?,?)";

				ps = con.prepareStatement(query);
				ps.setString(1, user.getId());
				ps.setString(2, user.getUser_name());
				ps.setString(3, user.getPassword());
				
				output = ps.executeUpdate();
				ps.close();
				con.close();
			   } 
			catch (Exception e)

			{

				System.out.println("**Error** StudentDL:adduser()" + e.getMessage());

			}

			return output;

          }
		
		public static String checkUserName(String user_name)
		{
			int output = 0;
			String query,username="";
			PreparedStatement ps = null;
			ResultSet rs=null;
			Connection con;
			try {
				con = DBHelper.getConnection();
				query = "SELECT user_name FROM user_login WHERE user_name=?";

				ps = con.prepareStatement(query);
				ps.setString(1, user_name);
				
				
				rs = ps.executeQuery();
				if(rs.next())
				{
					username = rs.getString(1);
				}
				
				else
				{
					username= null;
				}
				
				
				ps.close();
				con.close();
			   } 
			catch (Exception e)

			{

				System.out.println("**Error** UserLoginDL:checkuser()" + e.getMessage());

			}

			return username;

          }
		public static UserLoginDTO checkLogin(UserLoginDTO user1)
		{
			UserLoginDTO user2=null;
			Connection con;
			PreparedStatement ps=null;
			ResultSet rs = null;
			int result=0;
			try
			{
				user2 = new UserLoginDTO();
				con = DBHelper.getConnection();
				String sql = "SELECT * FROM user_login where user_name=? AND password=?";
				ps = con.prepareStatement(sql);
				ps.setString(1,user1.getUser_name());
				ps.setString(2,user1.getPassword());
				rs = ps.executeQuery();
				if(rs.next())
				{
					user2.setUser_name(rs.getString("user_name"));
					user2.setPassword(rs.getString("password"));
					user2.setId(rs.getString("id"));
				}
				
				con.close();
				
				
			}
			catch(Exception e)
			{
				result=-1;
				System.out.println("***Error*** at UserDL.checkLogin()"+e.getMessage());
			}
			
			return user2;
		}

		}
  
