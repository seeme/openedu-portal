package fcu.openedu.portal.service;

import java.util.Collections;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.GenericEntity;
import javax.ws.rs.core.HttpHeaders;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.apache.commons.collections.CollectionUtils;

import fcu.openedu.domain.Course;
import fcu.openedu.domain.School;
import fcu.openedu.portal.domain.InstituteDto;
import fcu.openedu.portal.persist.EntityDAO;
import jersey.repackaged.com.google.common.collect.Lists;

@Path("/institutes")
public class InstituteService {

	private static final String sEcho = "This is institute service.";
	
	private EntityDAO<School> mInstitute = new EntityDAO<School>();
	
	private EntityDAO<Course> mCourse = new EntityDAO<Course>();
	
	@GET
	@Produces(MediaType.TEXT_PLAIN)
	public String echo()
	{
		return sEcho;
	}
	
  @Path("/list")
  @GET
  @Produces(MediaType.APPLICATION_JSON)
  public Response getInstitutes() {
    List<School> lsMInstitute = mInstitute.findAll(School.class);
    List<InstituteDto> lsDInstitutes = getInstituteDtos(lsMInstitute);
    Response rs = Response.ok().entity(new GenericEntity<List<InstituteDto>>(lsDInstitutes) {})
        .header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_TYPE.withCharset("utf-8"))
        .build();
    return rs;
  }
	
  @Path("/list/coursesenabled")
  @GET
  @Produces(MediaType.APPLICATION_JSON)
  public Response getCoursesOpen() {
    String sHQL =
        "select distinct school from course as crs left join crs.offer school left join crs.availability avail where avail.name != 'Disable'";
    @SuppressWarnings("unchecked")
    List<School> lsMInstitute = (List<School>) mCourse.query(sHQL);
    List<InstituteDto> lsDInstitutes = getInstituteDtos(lsMInstitute);
    Response rs = Response.ok().entity(new GenericEntity<List<InstituteDto>>(lsDInstitutes) {})
        .header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_TYPE.withCharset("utf-8"))
        .build();
    return rs;
  }
	
	private List<InstituteDto> getInstituteDtos(List<School> lsMInstitutes)
	{
		List<InstituteDto> lsDInstitutes = Lists.newArrayList();
		if(CollectionUtils.isNotEmpty(lsMInstitutes))
			for(School school: lsMInstitutes)
				lsDInstitutes.add(transformModelToDto(school));	
		Collections.sort(lsDInstitutes);
		return lsDInstitutes;
	}
	
	private InstituteDto transformModelToDto(School school)
	{
		InstituteDto institute = new InstituteDto();
		institute.setId(school.getId());
		institute.setName(school.getName());
		return institute;
	}
}
