package fcu.openedu.portal.domain;

public class CourseShortInfoDto {

  private String id;

  private String available;

  private String courseName;

  private String courseOffer;

  private String startDate;

  private String courseCategory;

  private String thumbURL;

  private boolean mobile;
  
  private String cid;

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

  public String getStartDate() {
    return startDate;
  }

  public void setStartDate(String startDate) {
    this.startDate = startDate;
  }

  public String getThumbURL() {
    return thumbURL;
  }

  public void setThumbURL(String thumbURL) {
    this.thumbURL = thumbURL;
  }

  public boolean isMobile() {
    return mobile;
  }

  public void setMobile(boolean mobile) {
    this.mobile = mobile;
  }

  public String getCid() {
    return cid;
  }

  public void setCid(String cid) {
    this.cid = cid;
  }
}
