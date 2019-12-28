package com.ojp.bl;
import java.util.ArrayList;

import com.ojp.dl.JobseekerDL;
import com.ojp.dto.JobseekerDTO;

public class SeekerBL 
{
	public static int addseeker(JobseekerDTO seeker)
	{
		int output=0;
		
		try
		{
			
		
		 output = (JobseekerDL.addseeker(seeker));
		   
	     }
		catch(Exception e)

		{

		System.out.println("**Error** SeekerBL.addseeker() "+e.getMessage());

		}


		return output;

    }
	public static JobseekerDTO  getSeeker(String seeker_id)
	{
		JobseekerDTO seeker=null;
		try
		{
			seeker=JobseekerDL.getSeeker(seeker_id);
		}
		catch(Exception e)
		{
			System.out.println("**error**:JobseekerBL:getseeker()"+e.getMessage());
		}
		return seeker;
	}
	public static ArrayList<JobseekerDTO> getSeekers()
	{
		ArrayList<JobseekerDTO> seekers = new ArrayList<JobseekerDTO>();
		
		try
		{
			
		
		 seekers = (JobseekerDL.getSeekers());
		   
	     }
		catch(Exception e)

		{

		System.out.println("**Error** SeekerBL.getSeekers() "+e.getMessage());

		}


		return seekers;

}

	public static ArrayList<JobseekerDTO> getSpecificseekers(String seeker_skilltype)
	{
		ArrayList<JobseekerDTO> specificseekers = new ArrayList<JobseekerDTO>();
		
		try
		{
			
		
		 specificseekers = (JobseekerDL.getSpecificseekers(seeker_skilltype));
		   
	     }
		catch(Exception e)

		{

		System.out.println("**Error** SeekerBL.getSeekers() "+e.getMessage());

		}


		return specificseekers;

}
	public static int updateSeeker(JobseekerDTO  seeker)
	{
		int result=0;
		try
		{
			
		
			result = JobseekerDL.updateSeeker(seeker);
		   
	     }
		catch(Exception e)

		{

		System.out.println("**Error** SeekerBL.updateseeker() "+e.getMessage());

		}


		return result;
	}
	public static int updateStatus( String seeker_status,String seeker_id)
	{
		int result=0;
		try
		{
			
		
			result = JobseekerDL.updateStatus(seeker_status,seeker_id );
		   
	     }
		catch(Exception e)

		{

		System.out.println("**Error** SeekerBL.updateStatus() "+e.getMessage());

		}


		return result;
	}

}
