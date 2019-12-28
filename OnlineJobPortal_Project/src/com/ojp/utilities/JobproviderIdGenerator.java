package com.ojp.utilities;
import com.ojp.dl.JobProviderDL;


public class JobproviderIdGenerator {
	
     public static String generateJobproviderId()
		{
			String str=new String();
			String newstr=new String();
			String prefix,suffix;
			int  isuffix;
			str=JobProviderDL.JobProviderIdRetriver();
			if(str==null)
			{
				newstr="PE101";
			}
			else
			{
				prefix=str.substring(0,2);
				isuffix=Integer.parseInt(str.substring(2));
				isuffix++;
				newstr=prefix+isuffix;
			}
			return newstr;
		}


}
