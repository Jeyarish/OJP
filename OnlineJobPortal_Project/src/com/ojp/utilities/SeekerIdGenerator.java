package com.ojp.utilities;

import com.ojp.dl.JobseekerDL;

public class SeekerIdGenerator {
	public static String generateSeekerId()
	{
		String str=new String();
		String newstr=new String();
		String prefix,suffix;
		int  isuffix;
		str=JobseekerDL.SeekerIdRetriver();
		if(str==null)
		{
			newstr="SE101";
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
