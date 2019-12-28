package com.ojp.bl;

import java.util.ArrayList;

import com.ojp.dl.JobProviderDL;
import com.ojp.dl.JobseekerDL;
import com.ojp.dto.JobProviderDTO;
import com.ojp.dto.JobseekerDTO;

public final class JobProviderBL
{
	public static int addjobprovider(JobProviderDTO jobprovider)
	{
		int output=0;
		
		try
		{
			
		
		 output = (JobProviderDL.addjobprovider(jobprovider));
		   
	     }
		catch(Exception e)

		{

		System.out.println("**Error** JobProviderBL.addjobprovider() "+e.getMessage());

		}


		return output;

}
	public static ArrayList<JobProviderDTO> getProviders()
	{
		ArrayList<JobProviderDTO> providers = new ArrayList<JobProviderDTO>();
		
		try
		{
			
		
		 providers = (JobProviderDL.getProviders());
		   
	     }
		catch(Exception e)

		{

		System.out.println("**Error** SeekerBL.getSeekers() "+e.getMessage());

		}


		return providers;

}
	public static JobProviderDTO  getProvider(String provider_id)
	{
		JobProviderDTO provider=null;
		try
		{
			provider=JobProviderDL.getProvider(provider_id);
		}
		catch(Exception e)
		{
			System.out.println("**error**:JobseekerBL:getprovider()"+e.getMessage());
		}
		return provider;
	}
	public static int updateStatus( String provider_status,String provider_id)
	{
		int result=0;
		try
		{
			
		
			result = JobProviderDL.updateStatus(provider_status,provider_id );
		   
	     }
		catch(Exception e)

		{

		System.out.println("**Error** JobProviderBL.updateStatus() "+e.getMessage());

		}


		return result;
	}


}
