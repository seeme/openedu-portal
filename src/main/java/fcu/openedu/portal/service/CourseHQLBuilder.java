package fcu.openedu.portal.service;

import java.util.Map;

public class CourseHQLBuilder {
		
		public static String build(Map<HQLStatement, String> mParams)
		{
			StringBuilder sb = new StringBuilder("select distinct course from course as course"); 
			for(Map.Entry<HQLStatement, String> entry: mParams.entrySet())
				sb.append(" " + entry.getKey().getJoinStatement());
			
			if(mParams.size() > 0)
				sb.append(" where");
			
			int count = 0;
			for(Map.Entry<HQLStatement, String> entry: mParams.entrySet())
			{
				if(count > 0)
					sb.append(" and");
				sb.append(" " + entry.getKey().getConditionStatment(entry.getValue()));
				count++;
			}
			String sHQL = sb.toString();
			return sHQL;
		}

}

interface HQLStatement
{
   String getJoinStatement();
   
   String getConditionStatment(String sValue);
   
}

class CategoryHQLStatement implements HQLStatement
{
	private static final String sJoinStatement = "left join course.category cat";
	
	private static final String sConditionStatemnt = "cat.id =";
	
	@Override
	public String getJoinStatement() {
		return sJoinStatement;
	}

	@Override
	public String getConditionStatment(String sValue) {
		return sConditionStatemnt + sValue;
	}
}

class InstituteHQLStatement implements HQLStatement
{
	private static final String sJoinStatement = "left join course.offer institute";
	
	private static final String sConditionStatemnt = "institute.id =";
	
	@Override
	public String getJoinStatement() {
		return sJoinStatement;
	}

	@Override
	public String getConditionStatment(String sValue) {
		return sConditionStatemnt + sValue;
	}
}

class AvailabilityHQLStatement implements HQLStatement
{
	private static final String sJoinStatement = "left join course.availability avail";
	
	private static final String sConditionStatemnt = "avail.name ='";
	
	@Override
	public String getJoinStatement() {
		return sJoinStatement;
	}

	@Override
	public String getConditionStatment(String sValue) {
		return sConditionStatemnt + sValue + "'";
	}
}

class KeywordHQLStatement implements HQLStatement
{
	private static final String sJoinStatement = "";
	
	private static final String sConditionStatemnt = "course.name like '%";
	
	@Override
	public String getJoinStatement() {
		return sJoinStatement;
	}

	@Override
	public String getConditionStatment(String sValue) {
		return sConditionStatemnt + sValue + "%'";
	}
}

class MobileHQLStatement implements HQLStatement
{
	private static final String sJoinStatement = "";
	
	private static final String sConditionStatemnt = "course.isMobile = ";
	
	@Override
	public String getJoinStatement() {
		return sJoinStatement;
	}

	@Override
	public String getConditionStatment(String sValue) {
		return sConditionStatemnt + sValue;
	}
}