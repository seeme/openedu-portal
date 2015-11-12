package fcu.openedu.portal.domain;

import java.io.Serializable;

@SuppressWarnings("serial")
public class InstructorDto implements Serializable {

  private long id;

  private String name;

  private String schools;

  private String pictureURL;

  private String position;

  private String description;

  private String email;

  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getSchools() {
    return schools;
  }

  public void setSchools(String schools) {
    this.schools = schools;
  }

  public String getPictureURL() {
    return pictureURL;
  }

  public void setPictureURL(String pictureURL) {
    this.pictureURL = pictureURL;
  }

  public String getPosition() {
    return position;
  }

  public void setPosition(String position) {
    this.position = position;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

}
