package com.ojp.dl;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.ojp.dto.JobProviderDTO;
import com.ojp.dto.JobseekerDTO;
public class JobProviderDL {

	        public static int addjobprovider(JobProviderDTO jobprovider) {
			int output = 0;
			String query;
			PreparedStatement ps = null;
			Connection con;
			try {
				con = DBHelper.getConnection();
				query = "INSERT INTO job_provider VALUES(?,?,?,?,?,?)";

				ps = con.prepareStatement(query);
				ps.setString(1, jobprovider.getJobprovider_id());
				ps.setString(2, jobprovider.getJobprovider_name());
				ps.setString(3, jobprovider.getJobprovider_gender());
				ps.setString(4, jobprovider.getJobprovider_address());
				ps.setLong(5, jobprovider.getJobprovider_phonenumber());
				ps.setString(6, jobprovider.getJobprovider_status());
				
				output = ps.executeUpdate();
				ps.close();
				con.close();
			} catch (Exception e)

			{

				System.out.println("**Error** JobProviderDL:addjobprovider()" + e.getMessage());

			}

			return output;

		}
		public static String JobProviderIdRetriver()
		{
			Connection con;
			Statement st=null;
			ResultSet rs=null;
			int result=0;
			 String jobprovider_id=new String();
			 try
			 {
				 con=DBHelper.getConnection();
				 String sql="SELECT jobprovider_id from job_provider ORDER BY jobprovider_id DESC";
				 st=con.createStatement();
				 rs=st.executeQuery(sql);
				 if(rs.next())
				 {
					 jobprovider_id=rs.getString(1);
				 }
				 else
				 {
					 jobprovider_id=null;
					
				 }
				 con.close();
			 }
			 catch(Exception e)
			 {
				 result=-1;
				 System.out.println("***error** at job_seeker.IdRetriever()"+e.getMessage());
			 }
			 return jobprovider_id;
		}
		public static ArrayList<JobProviderDTO> getProviders()

		{
			ArrayList<JobProviderDTO> providers = new ArrayList<JobProviderDTO>();
			
			JobProviderDTO provider;
			Connection con = null;

			Statement statement = null;

			ResultSet resultSet = null;

			

			try

			{

				String sql = "SELECT * FROM job_provider ";

				con = DBHelper.getConnection();

				statement = con.createStatement();

				resultSet = statement.executeQuery(sql);

				while (resultSet.next()) {

					provider = new JobProviderDTO();

					provider.setJobprovider_id(resultSet.getString(1));

					provider.setJobprovider_name(resultSet.getString(2));

					provider.setJobprovider_gender(resultSet.getString(3));

					provider.setJobprovider_address(resultSet.getString(4));

					provider.setJobprovider_phonenumber(resultSet.getLong(5));
					provider.setJobprovider_status(resultSet.getString(6));
					
					providers.add(provider);

				}

				

			}

			catch (Exception e)

			{

				System.out.println("**Error** JobProviderDL:getproviders " + e.getMessage());

			}

			return providers;

		}
		public static JobProviderDTO getProvider(String UserID)
		{
			ArrayList<JobProviderDTO> providers = new ArrayList<JobProviderDTO>();
			Connection con=null;
			Statement statement=null;
			ResultSet resultSet=null;
			JobProviderDTO provider=null;
			try
			{
				String sql="select * FROM job_provider WHERE JOBPROVIDER_ID='"+UserID+"'";
				con=DBHelper.getConnection();
				statement=con.createStatement();
				resultSet=statement.executeQuery(sql);
				if(resultSet.next())
				{
					provider=new JobProviderDTO();
					provider.setJobprovider_id(resultSet.getString(1));

					provider.setJobprovider_name(resultSet.getString(2));

					provider.setJobprovider_gender(resultSet.getString(3));

					
					provider.setJobprovider_address(resultSet.getString(4));

					
					provider.setJobprovider_phonenumber(resultSet.getLong(5));
					provider.setJobprovider_status(resultSet.getString(6));
					
					providers.add(provider);
				}
			}
			catch(Exception e)
			{
				System.out.println("**error** userdl:getuserdetails"+e.getMessage());
			}
			return provider;
		}
		public static int updateStatus(String provider_status,String provider_id)
		{
			int result=0;
			String query;
			PreparedStatement ps=null;

			Connection con;
			try
			{

				con=DBHelper.getConnection();

				 query = "UPDATE JOB_PROVIDER SET PROVIDER_STATUS=? WHERE JOBPROVIDER_ID=?";
				 ps=con.prepareStatement(query);
				 ps.setString(1,provider_status);
				 ps.setString(2,provider_id);
				 result = ps.executeUpdate();
			}
			catch(Exception e)
			
				{

					System.out.println("**Error** JobProviderDL:updateStatus "+e.getMessage());

				}
			return result;
			}
		
	}


