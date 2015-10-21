package fcu.openedu.portal.domain;

import java.io.Serializable;

import fcu.openedu.domain.Description;

@SuppressWarnings("serial")
public class CourseCompleteInfoDto implements Serializable {

	private String cid = null;
	private String name = null;
	private String thumbURL = null;
	private String availability = null;
	private String startDate = null;
	private String endData = null;
    private String offesr;;
	private long id = 0;
	private String categories ;
	private int length = 0;
	private String descIntro;
	private String descTarget;
	private String descObjective;
	private String descCharact;
	private String descSchedule;
	private String descAssess;
	private String descPrereq;
	
	private String videoURL = null;
	private String link = "";
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getThumbURL() {
		return thumbURL;
	}
	public void setThumbURL(String thumbURL) {
		this.thumbURL = thumbURL;
	}
	public String getAvailability() {
		return availability;
	}
	public void setAvailability(String availability) {
		this.availability = availability;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndData() {
		return endData;
	}
	public void setEndData(String endData) {
		this.endData = endData;
	}
	public String getOffesr() {
		return offesr;
	}
	public void setOffesr(String offesr) {
		this.offesr = offesr;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getCategories() {
		return categories;
	}
	public void setCategories(String categories) {
		this.categories = categories;
	}
	public int getLength() {
		return length;
	}
	public void setLength(int length) {
		this.length = length;
	}
	public String getDescIntro() {
		return descIntro;
	}
	public void setDescIntro(String descIntro) {
		this.descIntro = descIntro;
	}
	public String getDescTarget() {
		return descTarget;
	}
	public void setDescTarget(String descTarget) {
		this.descTarget = descTarget;
	}
	public String getDescObjective() {
		return descObjective;
	}
	public void setDescObjective(String descObjective) {
		this.descObjective = descObjective;
	}
	public String getDescCharact() {
		return descCharact;
	}
	public void setDescCharact(String descCharact) {
		this.descCharact = descCharact;
	}
	public String getDescSchedule() {
		return descSchedule;
	}
	public void setDescSchedule(String descSchedule) {
		this.descSchedule = descSchedule;
	}
	public String getDescAssess() {
		return descAssess;
	}
	public void setDescAssess(String descAssess) {
		this.descAssess = descAssess;
	}
	public String getDescPrereq() {
		return descPrereq;
	}
	public void setDescPrereq(String descPrereq) {
		this.descPrereq = descPrereq;
	}
	public String getVideoURL() {
		return videoURL;
	}
	public void setVideoURL(String videoURL) {
		this.videoURL = videoURL;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
}
