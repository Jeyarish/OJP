package com.ojp.dl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.ojp.dto.JobseekerDTO;

public class JobseekerDL {

	public static int addseeker(JobseekerDTO seeker) {
		int output = 0;
		String query;
		PreparedStatement ps = null;
		Connection con;
		try {
			con = DBHelper.getConnection();
			query = "INSERT INTO job_seeker VALUES(?,?,?,?,?,?,?,?,?,?,?)";

			ps = con.prepareStatement(query);
			ps.setString(1, seeker.getSeeker_id());
			ps.setString(2, seeker.getSeeker_name());
			ps.setString(3, seeker.getSeeker_dob());
			ps.setString(4, seeker.getSeeker_gender());
			ps.setString(5, seeker.getSeeker_skilltype());
			ps.setString(6, seeker.getSeeker_experience());
			ps.setString(7, seeker.getSeeker_address());
			ps.setString(8, seeker.getSeeker_district());
			ps.setLong(9, seeker.getSeeker_phonenumber());
			ps.setString(10, seeker.getSeeker_status());
			ps.setString(11, seeker.getSeeker_wages());

			output = ps.executeUpdate();
			ps.close();
			con.close();
		} catch (Exception e)

		{

			System.out.println("**Error** StudentDL:addSeeker()" + e.getMessage());

		}

		return output;

	}
	public static String SeekerIdRetriver()
	{
		Connection con;
		Statement st=null;
		ResultSet rs=null;
		int result=0;
		 String seeker_id=new String();
		 try
		 {
			 con=DBHelper.getConnection();
			 String sql="SELECT seeker_id from job_seeker ORDER BY seeker_id DESC";
			 st=con.createStatement();
			 rs=st.executeQuery(sql);
			 if(rs.next())
			 {
				 seeker_id=rs.getString(1);
			 }
			 else
			 {
				 seeker_id=null;
				
			 }
			 con.close();
		 }
		 catch(Exception e)
		 {
			 result=-1;
			 System.out.println("***error** at job_seeker.IdRetriever()"+e.getMessage());
		 }
		 return seeker_id;
	}
	public static JobseekerDTO getSeeker(String UserID)
	{
		ArrayList<JobseekerDTO> seekers = new ArrayList<JobseekerDTO>();
		Connection con=null;
		Statement statement=null;
		ResultSet resultSet=null;
		JobseekerDTO seeker=null;
		try
		{
			String sql="select * FROM job_seeker WHERE SEEKER_ID='"+UserID+"'";
			con=DBHelper.getConnection();
			statement=con.createStatement();
			resultSet=statement.executeQuery(sql);
			if(resultSet.next())
			{
				seeker=new JobseekerDTO();
				seeker.setSeeker_id(resultSet.getString(1));

				seeker.setSeeker_name(resultSet.getString(2));

				seeker.setSeeker_dob(resultSet.getString(3));

				seeker.setSeeker_gender(resultSet.getString(4));

				seeker.setSeeker_skilltype(resultSet.getString(5));
				
				seeker.setSeeker_experience(resultSet.getString(6));

				seeker.setSeeker_address(resultSet.getString(7));
				seeker.setSeeker_district(resultSet.getString(8));
				seeker.setSeeker_phonenumber(resultSet.getLong(9));
				seeker.setSeeker_status(resultSet.getString(10));
				seeker.setSeeker_wages(resultSet.getString(11));
				
				seekers.add(seeker);
			}
			
		}catch(Exception e)
		{
			System.out.println("**error** userdl:getuserdetails"+e.getMessage());
		}
		return seeker;
		
	}
	public static ArrayList<JobseekerDTO> getSeekers()

	{
		ArrayList<JobseekerDTO> seekers = new ArrayList<JobseekerDTO>();
		
		JobseekerDTO seeker;
		Connection con = null;

		Statement statement = null;

		ResultSet resultSet = null;

		// JobseekerDTO seeker=null;

		try

		{

			String sql = "SELECT * FROM job_seeker ";

			con = DBHelper.getConnection();

			statement = con.createStatement();

			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {

				seeker = new JobseekerDTO();

				seeker.setSeeker_id(resultSet.getString(1));

				seeker.setSeeker_name(resultSet.getString(2));

				seeker.setSeeker_dob(resultSet.getString(3));

				seeker.setSeeker_gender(resultSet.getString(4));

				seeker.setSeeker_skilltype(resultSet.getString(5));
				
				seeker.setSeeker_experience(resultSet.getString(6));

				seeker.setSeeker_address(resultSet.getString(7));
				
				seeker.setSeeker_district(resultSet.getString(8));
				
				seeker.setSeeker_phonenumber(resultSet.getLong(9));
				
				seeker.setSeeker_status(resultSet.getString(10));
				
				seeker.setSeeker_wages(resultSet.getString(11));
				
				seekers.add(seeker);

			}

			

		}

		catch (Exception e)

		{

			System.out.println("**Error** JobSeekerDL:getSeekers " + e.getMessage());

		}

		return seekers;

	}
	public static ArrayList<JobseekerDTO> getSpecificseekers(String seeker_skilltype)

	{
		ArrayList<JobseekerDTO> specificseekers = new ArrayList<JobseekerDTO>();
		
		
	//	JobseekerDTO seeker;
		Connection con = null;

		Statement statement = null;
		
		ResultSet resultSet = null;

		JobseekerDTO seekers=null;

		try

		{
			
			String sql = "SELECT * FROM job_seeker where seeker_skilltype= '"+seeker_skilltype+"'";
		
			//System.out.println(seeker_skilltype);
			con = DBHelper.getConnection();
		
			statement = con.createStatement();

			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) 
			{

			    seekers= new JobseekerDTO();

				seekers.setSeeker_id(resultSet.getString(1));

				seekers.setSeeker_name(resultSet.getString(2));

				seekers.setSeeker_dob(resultSet.getString(3));

				seekers.setSeeker_gender(resultSet.getString(4));

				seekers.setSeeker_skilltype(resultSet.getString(5));
				
				seekers.setSeeker_experience(resultSet.getString(6));

				seekers.setSeeker_address(resultSet.getString(7));
				
				seekers.setSeeker_district(resultSet.getString(8));
				
				seekers.setSeeker_phonenumber(resultSet.getLong(9));
				
				seekers.setSeeker_status(resultSet.getString(10));
				
				seekers.setSeeker_wages(resultSet.getString(11));
				
				specificseekers.add(seekers);

			   }

			

		}

		catch (Exception e)

		{

			System.out.println("**Error** JobSeekerDL:getSeekers " + e.getMessage());

		}

		return specificseekers;
	}
	public static int updateSeeker(JobseekerDTO  seeker)

	{

		int result=0;

		String query;

		PreparedStatement ps=null;

		Connection con;


	try

	{

	con=DBHelper.getConnection();

	 query = "UPDATE JOB_SEEKER SET SEEKER_NAME=?,SEEKER_DOB=?,SEEKER_GENDER=?,SEEKER_SKILLTYPE=?,SEEKER_EXPERIENCE=?,SEEKER_ADDRESS=?,SEEKER_DISTRICT=?,SEEKER_PHONENUMBER=?,HOURLY_WAGES=? WHERE SEEKER_ID=?";


	
	ps=con.prepareStatement(query);

	ps.setString(1, seeker.getSeeker_name());

	ps.setString(2, seeker.getSeeker_dob());

	ps.setString(3, seeker.getSeeker_gender());

	ps.setString(4, seeker.getSeeker_skilltype());

	ps.setString(5, seeker.getSeeker_experience());

	ps.setString(6, seeker.getSeeker_address());

	ps.setString(7, seeker.getSeeker_district());

	ps.setLong(8, seeker.getSeeker_phonenumber());
	
	ps.setString(9, seeker.getSeeker_wages());
	ps.setString(10,seeker.getSeeker_id());

	result = ps.executeUpdate();


	}

	catch(Exception e)

	{

	System.out.println("**Error** JobsekerDL:updateSeeker "+e.getMessage());

	}


	return result;

	}
	public static int updateStatus(String seeker_status,String seeker_id)
	{
		int result=0;
		String query;
		PreparedStatement ps=null;

		Connection con;
		try
		{

			con=DBHelper.getConnection();

			 query = "UPDATE JOB_SEEKER SET STATUS=? WHERE SEEKER_ID=?";
			 ps=con.prepareStatement(query);
			 ps.setString(1,seeker_status);
			 ps.setString(2,seeker_id);
			 result = ps.executeUpdate();
		}
		catch(Exception e)
		
			{

				System.out.println("**Error** JobseekerDL:updateStatus "+e.getMessage());

			}
		return result;
		}
	
	}

