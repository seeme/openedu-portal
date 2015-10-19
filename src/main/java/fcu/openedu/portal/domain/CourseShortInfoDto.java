package fcu.openedu.portal.domain;

public class CourseShortInfoDto {

	private String id;
	
	private String available;

	private String courseName;

	private String courseOffer;

	private String courseDuration;
	
	private String courseCategory;
	
	private String thumbURL;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCourseCategory() {
		return courseCategory;
	}

	public void setCourseCategory(String courseCategory) {
		this.courseCategory = courseCategory;
	}

	public String getAvailable() {
		return available;
	}

	public void setAvailable(String available) {
		this.available = available;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getCourseOffer() {
		return courseOffer;
	}

	public void setCourseOffer(String courseUniv) {
		this.courseOffer = courseUniv;
	}

	public String getCourseDuration() {
		return courseDuration;
	}

	public void setCourseDuration(String courseDuration) {
		this.courseDuration = courseDuration;
	}

	public String getThumbURL() {
		return thumbURL;
	}

	public void setThumbURL(String thumbURL) {
		this.thumbURL = thumbURL;
	}
}
