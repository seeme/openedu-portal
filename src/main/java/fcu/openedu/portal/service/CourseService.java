package fcu.openedu.portal.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.GenericEntity;
import javax.ws.rs.core.HttpHeaders;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.apache.commons.collections.CollectionUtils;

import com.google.common.base.Strings;
import com.google.common.collect.Maps;

import fcu.openedu.domain.Category;
import fcu.openedu.domain.Course;
import fcu.openedu.domain.Instructor;
import fcu.openedu.domain.Language;
import fcu.openedu.domain.School;
import fcu.openedu.domain.Transcript;
import fcu.openedu.portal.domain.CourseCompleteInfoDto;
import fcu.openedu.portal.domain.CourseShortInfoDto;
import fcu.openedu.portal.domain.InstructorDto;
import fcu.openedu.portal.persist.EntityDAO;
import jersey.repackaged.com.google.common.collect.Lists;

@Path("/courses")
public class CourseService {

  public static final String sEcho = "This is course service.";

  private EntityDAO<Course> mCourseDao = new EntityDAO<Course>();

  private SimpleDateFormat mDateFormat = new SimpleDateFormat("yyyy-MM-dd");

  @GET
  @Produces(MediaType.TEXT_PLAIN)
  public String getHello() {
    return sEcho;
  }

  @Path("/listShortInfo")
  @GET
  @Produces(MediaType.APPLICATION_JSON)
  public Response getCourseShortInfo() {
    List<CourseShortInfoDto> ls = getAllCourses();
    Response rs = Response.ok().entity(new GenericEntity<List<CourseShortInfoDto>>(ls) {})
        .header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_TYPE.withCharset("utf-8"))
        .build();
    return rs;
  }

  private List<CourseShortInfoDto> getAllCourses() {
    List<CourseShortInfoDto> lsCourses = Lists.newArrayList();
    List<Course> lsModels = mCourseDao.findAll(Course.class);
    for (Course course : lsModels)
      lsCourses.add(transformModelToShortInfoDto(course));
    return lsCourses;
  }

  private CourseShortInfoDto transformModelToShortInfoDto(Course course) {
    CourseShortInfoDto aDto = new CourseShortInfoDto();
    aDto.setAvailable(course.getAvailability().getName());
    aDto.setStartDate(formatStartDate(course));
    aDto.setCourseName(course.getName());
    aDto.setCourseOffer(getInstitutes(course));
    aDto.setCourseCategory(getCategories(course));
    aDto.setId(String.valueOf(course.getId()));
    aDto.setThumbURL(course.getThumbURL());
    aDto.setMobile(course.isIsMobile());
    return aDto;
  }

  private String formatStartDate(Course course) {
    Date startDate = course.getStartDate();

    if (startDate == null) {
      // to-do: add log here
      return "";
    }
    String sCourseDuration = mDateFormat.format(startDate);
    return sCourseDuration;
  }

  private String getInstitutes(Course course) {
    StringBuilder sb = new StringBuilder();
    List<School> lsOffers = course.getOffer();
    if (CollectionUtils.isNotEmpty(lsOffers)) {
      for (int i = 0; i < lsOffers.size(); i++) {
        School s = lsOffers.get(i);
        if (i > 0)
          sb.append(", ");
        sb.append(s.getName());
      }
      return sb.toString();
    }
    // to-do: add log here
    return "";
  }

  private String getCategories(Course course) {
    List<Category> lsCats = course.getCategory();
    StringBuilder sb = new StringBuilder();

    if (CollectionUtils.isNotEmpty(lsCats)) {
      for (int i = 0; i < lsCats.size(); i++) {
        if (i > 0)
          sb.append(", ");
        sb.append(lsCats.get(i).getName());
      }
      return sb.toString();
    }
    return "";
  }

  @Path("/{id}")
  @GET
  @Produces(MediaType.APPLICATION_JSON)
  public Response getCourseInfo(@PathParam("id") long id) {
    Course mCourse = mCourseDao.findById(Course.class, Long.valueOf(id));
    CourseCompleteInfoDto dCourse = transformModelToCompleteInfoDto(mCourse);
    Response rs = Response.ok().entity(new GenericEntity<CourseCompleteInfoDto>(dCourse) {})
        .header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_TYPE.withCharset("utf-8"))
        .build();
    return rs;
  
  }
  

  private CourseCompleteInfoDto transformModelToCompleteInfoDto(Course mCourse) {
    CourseCompleteInfoDto dCourse = new CourseCompleteInfoDto();
    dCourse.setName(mCourse.getName());
    dCourse.setDescIntro(mCourse.getDescription().getIntro());
    dCourse.setDescObjective(mCourse.getDescription().getObjective());
    dCourse.setDescTarget(mCourse.getDescription().getTarget());
    dCourse.setDescCharact(mCourse.getDescription().getCharacteristic());
    dCourse.setDescSchedule(mCourse.getDescription().getSchedule());
    dCourse.setDescAssess(mCourse.getDescription().getAssessment());
    dCourse.setDescPrereq(mCourse.getDescription().getPrerequisite());
    dCourse.setOffers(getInstitutes(mCourse));
    dCourse.setCategories(getCategories(mCourse));
    dCourse.setCid(mCourse.getCid());
    dCourse.setAvailability(mCourse.getAvailability().getName());
    if (mCourse.getStartDate() != null)
      dCourse.setStartDate(mDateFormat.format(mCourse.getStartDate()));
    dCourse.setLink(mCourse.getLink());
    dCourse.setVideoURL(mCourse.getVideoURL());
    dCourse.setInstructors(getInstructors(mCourse));
    dCourse.setLength(mCourse.getLength());
    dCourse.setLanguage(getLanguage(mCourse));
    dCourse.setTranscript(getTranscript(mCourse));
    return dCourse;
  }
  
  private String getLanguage(Course course)
  {
    Language lang = course.getLanguage();
    if(lang != null)
      return Strings.nullToEmpty(lang.getName());
    return "";
  }
  
  private String getTranscript(Course course)
  {
    Transcript trnspt = course.getTranscript();
    if(trnspt != null)
      return Strings.nullToEmpty(trnspt.getName());
    return "";
  }

  @Path("/query")
  @GET
  @Produces(MediaType.APPLICATION_JSON)
  public Response queryCourseInfo(@QueryParam("category") String sCategoryId,
      @QueryParam("institute") String sInstituteId, @QueryParam("availability") String sAvail,
      @QueryParam("keyword") String sKeyword, @QueryParam("mobile") String sMobile) {
    List<CourseShortInfoDto> lsCourseDtos = Lists.newArrayList();
    @SuppressWarnings("unchecked")
    List<Course> lsMCourses = (List<Course>) mCourseDao
        .query(buildHQL(sCategoryId, sInstituteId, sAvail, sKeyword, sMobile));
    if (CollectionUtils.isNotEmpty(lsMCourses))
      for (Course course : lsMCourses)
        lsCourseDtos.add(transformModelToShortInfoDto(course));
    
    
    Response rs = Response.ok().entity(new GenericEntity<List<CourseShortInfoDto>>(lsCourseDtos) {})
        .header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_TYPE.withCharset("utf-8"))
        .build();
    
    return rs;
  }

  private String buildHQL(String sCategoryId, String sInstituteId, String sAvail, String sKeyword,
      String sMobile) {
    Map<HQLStatement, String> mParams = Maps.newHashMap();
    if (sCategoryId != null)
      mParams.put(new CategoryHQLStatement(), sCategoryId);
    if (sInstituteId != null)
      mParams.put(new InstituteHQLStatement(), sInstituteId);
    if (sAvail != null)
      mParams.put(new AvailabilityHQLStatement(), sAvail);
    if (sKeyword != null)
      mParams.put(new KeywordHQLStatement(), sKeyword);
    if (sMobile != null)
      mParams.put(new MobileHQLStatement(), sMobile);

    String sHQL = CourseHQLBuilder.build(mParams);
    return sHQL;
  }

  private List<InstructorDto> getInstructors(Course mCourse) {
    List<InstructorDto> lsInstructors = Lists.newArrayList();

    for (Instructor ist : mCourse.getInstructor()) {
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

  private String getInstructorFrom(Instructor ist) {
    StringBuilder sb = new StringBuilder();
    List<School> lsSchools = ist.getSchool();
    if (CollectionUtils.isNotEmpty(lsSchools)) {
      for (int i = 0; i < lsSchools.size(); i++) {
        School school = lsSchools.get(i);
        if (i > 0)
          sb.append(", ");
        sb.append(school.getName());
      }
    }
    return sb.toString();
  }
}
