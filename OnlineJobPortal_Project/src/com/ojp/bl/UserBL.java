package com.ojp.bl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ojp.dl.DBHelper;
import com.ojp.dl.UserLoginDL;
import com.ojp.dto.UserLoginDTO;

public class UserBL 
{

	public static int adduser(UserLoginDTO user)
	{
		int output=0;
		
		try
		{
			
		
		 output = (UserLoginDL.adduser(user));
		   
	     }
		catch(Exception e)

		{

		System.out.println("**Error** UserBL.addseeker() "+e.getMessage());

		}


		return output;

	}
	
	public static String checkUserName(String user_name)
	{
		
		String username="";
		
		try {
			
			
			
			username = UserLoginDL.checkUserName(user_name);
			
			
		   } 
		catch (Exception e)

		{

			System.out.println("**Error** UserLoginBL:checkuser()" + e.getMessage());

		}

		return username;

      }
	
	public static UserLoginDTO checkLogin(UserLoginDTO user1)
	{
		UserLoginDTO user2=null;
		Connection con;
		int result=0;
		try
		{
			user2 = new UserLoginDTO();
			user2=UserLoginDL.checkLogin(user1);
			
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("***Error*** at UserDL.checkLogin()"+e.getMessage());
		}
		
		return user2;
	}

}
