package fcu.openedu.portal.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.GenericEntity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.apache.commons.collections.CollectionUtils;

import fcu.openedu.domain.Category;
import fcu.openedu.domain.Course;
import fcu.openedu.domain.Instructor;
import fcu.openedu.domain.School;
import fcu.openedu.portal.domain.CourseCompleteInfoDto;
import fcu.openedu.portal.domain.CourseShortInfoDto;
import fcu.openedu.portal.domain.InstructorDto;
import fcu.openedu.portal.persist.EntityDAO;
import jersey.repackaged.com.google.common.collect.Lists;

@Path("/courses")
public class CourseService {

	public static final String CLICHED_MESSAGE = "Hello World!";
	
	private EntityDAO<Course> mCourseDao = new EntityDAO<Course>();
	
	private SimpleDateFormat mDateFormat = new SimpleDateFormat("yyyy-MM-dd");

	@GET
	 @Produces(MediaType.TEXT_PLAIN)
	public String getHello() {
		return CLICHED_MESSAGE;
	}
	
	@Path("/listShortInfo")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response  getCourseShortInfo()
	{
		List<CourseShortInfoDto> ls = getAllCourses();// getTestCourses();
		Response rs = Response.ok().entity(new GenericEntity<List<CourseShortInfoDto>>(ls) {}).build();
		return rs;
	}
	
	@Path("/{id}")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public CourseCompleteInfoDto getCourseInfo(@PathParam("id") long  id)
	{
		CourseCompleteInfoDto dCourse = new CourseCompleteInfoDto();
		Course mCourse =mCourseDao.findById(Course.class, Long.valueOf(id));
		dCourse.setName(mCourse.getName());
		dCourse.setDescIntro(mCourse.getDescription().getIntro());
		dCourse.setDescObjective(mCourse.getDescription().getObjective());
		dCourse.setDescTarget(mCourse.getDescription().getTarget());
		dCourse.setDescCharact(mCourse.getDescription().getCharacteristic());
		dCourse.setDescSchedule(mCourse.getDescription().getSchedule());
		dCourse.setDescAssess(mCourse.getDescription().getAssessment());
		dCourse.setDescPrereq(mCourse.getDescription().getPrerequisite());
		dCourse.setOffers(getOffers(mCourse));
		dCourse.setCategories(getCategories(mCourse));
		dCourse.setCid(mCourse.getCid());
		dCourse.setAvailability(mCourse.getAvailability().getName());
		if(mCourse.getStartDate() != null)
			dCourse.setStartDate(mDateFormat.format(mCourse.getStartDate()));
		dCourse.setLink(mCourse.getLink());
		dCourse.setVideoURL(mCourse.getVideoURL());
		dCourse.setInstructors(getInstructors(mCourse));
		return dCourse;
	}
	
	private List<InstructorDto> getInstructors(Course mCourse)
	{
		List<InstructorDto>lsInstructors = Lists.newArrayList();
		
		for(Instructor ist: mCourse.getInstructor())
		{
			InstructorDto dIst = new InstructorDto();
			dIst.setDescription(ist.getDescription());
			dIst.setEmail(ist.getEmail());
			dIst.setId(ist.getId());
			dIst.setName(ist.getName());
			dIst.setPictureURL(ist.getPictureURL());
			dIst.setPosition(ist.getPosition());
			dIst.setSchools(getInstructorFrom(ist));
			lsInstructors.add(dIst);
		}
		return lsInstructors;
	}
	
	private String getInstructorFrom(Instructor ist)
	{
		StringBuilder sb = new StringBuilder();
		List<School> lsSchools = ist.getSchool();
		if(CollectionUtils.isNotEmpty(lsSchools))
		{
			for(int i = 0; i < lsSchools.size(); i++)
			{
				School school = lsSchools.get(i);
				if(i > 0)
					sb.append(", ");
				sb.append(school.getName());
			}
		}
		return sb.toString();
	}
	
	
	private List<CourseShortInfoDto> getAllCourses()
	{
		List<CourseShortInfoDto> lsCourses = Lists.newArrayList();
		List<Course> lsModels = mCourseDao.findAll(Course.class);
		
		for(Course course: lsModels)
		{
			CourseShortInfoDto aDto = new CourseShortInfoDto();
			aDto.setAvailable(course.getAvailability().getName());
			aDto.setCourseDuration(getCourseDuration(course));
			aDto.setCourseName(course.getName());
			aDto.setCourseOffer(getOffers(course));
			aDto.setCourseCategory(getCategories(course));
			aDto.setId(String.valueOf(course.getId()));
			aDto.setThumbURL(course.getThumbURL());
			aDto.setMobile(course.isIsMobile());
			lsCourses.add(aDto);
		}
		return lsCourses;
	}
	
	private String getCourseDuration(Course course)
	{
		Date startDate = course.getStartDate();
		Date endDate = course.getEndData();
	
		if(startDate == null || endDate == null)
		{
			//to-do: add log here
			return "";
		}
		String sCourseDuration = mDateFormat.format(startDate) + "~" + mDateFormat.format(endDate);
		return sCourseDuration;
	}
	
	private String getOffers(Course course)
	{
		StringBuilder sb = new StringBuilder();
		List<School> lsOffers =  course.getOffer();
		if(CollectionUtils.isNotEmpty(lsOffers))
		{
			for(int i = 0; i <lsOffers.size(); i++)
			{
				School s = lsOffers.get(i);
				if(i > 0)
					sb.append(", ");
				sb.append(s.getName());
			}
			return sb.toString();	
		}
		//to-do: add log here
		return "";
	}
	
	private String getCategories(Course course)
	{
		List<Category> lsCats = course.getCategory();
		StringBuilder sb = new StringBuilder();
		
		if(CollectionUtils.isNotEmpty(lsCats))
		{
			for(int i = 0; i < lsCats.size(); i++)
			{
				if(i > 0)
					sb.append(", ");
				sb.append(lsCats.get(i).getName());
			}
			return sb.toString();
		}
		return "";
	}
	
	private List<CourseShortInfoDto> getTestCourses()
	{
		
		List<CourseShortInfoDto> ls = new ArrayList<CourseShortInfoDto>();
		
		CourseShortInfoDto dto = new CourseShortInfoDto();
		dto.setAvailable("開課中");
		dto.setCourseDuration("2015/10/12~2015/10/20");
		dto.setCourseName("從車庫到金庫 – 看見台灣企業生命力");
		dto.setCourseOffer("逢甲大學");
		dto.setThumbURL("/thumb/abc.jpg");
		ls.add(dto);
		
		dto = new CourseShortInfoDto();
		dto.setAvailable("開課中");
		dto.setCourseDuration("2015/09/28~2016/01/31 ");
		dto.setCourseName("大學普通物理實驗 – 手作坊");
		dto.setCourseOffer("逢甲大學");
		dto.setThumbURL("/thumb/abc.jpg");
		ls.add(dto);
		
		dto = new CourseShortInfoDto();
		dto.setAvailable("開課中");
		dto.setCourseDuration("2015/10/05~2015/12/07 ");
		dto.setCourseName("空間資訊與智慧生活");
		dto.setCourseOffer("逢甲大學");
		dto.setThumbURL("/thumb/abc.jpg");
		ls.add(dto);
		
		dto = new CourseShortInfoDto();
		dto.setAvailable("開課中");
		dto.setCourseDuration("2015/09/21~2015/11/01");
		dto.setCourseName("臺灣客家文化導論 – 臺灣的客家話與客家文學");
		dto.setCourseOffer("國立中央大學");
		dto.setThumbURL("/thumb/abc.jpg");
		ls.add(dto);
		
		return ls;
		
	}
}
