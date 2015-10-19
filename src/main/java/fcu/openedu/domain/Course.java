package fcu.openedu.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

/**
 * A representation of the model object '<em><b>Course</b></em>'. <!--
 * begin-user-doc --> <!-- end-user-doc -->
 * 
 * @generated
 */
@Entity(name = "Course")
public class Course {

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Basic()
	private String cid = null;

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Basic()
	private String name = null;

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Basic()
	private String thumbURL = null;

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@ManyToOne(cascade = { CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH }, optional = false)
	private Availability availability = null;

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Basic()
	@Temporal(TemporalType.DATE)
	private Date startDate = null;

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Basic()
	@Temporal(TemporalType.DATE)
	private Date endData = null;

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@ManyToMany(cascade = { CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH }, fetch=FetchType.EAGER)
	@Fetch(value = FetchMode.SUBSELECT)
	private List<School> offer = new ArrayList<School>();

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@ManyToMany(cascade = { CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH })
	private List<Instructor> instructor = new ArrayList<Instructor>();

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Basic()
	private boolean isMobile = false;

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Basic()
	private int year = 0;

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Basic(optional = false)
	@Id()
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id = 0;

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@ManyToMany(cascade = { CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH }, fetch=FetchType.EAGER)
	@Fetch(value = FetchMode.SUBSELECT)
	private List<Category> category = new ArrayList<Category>();

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@ManyToMany(cascade = { CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH })
	private List<Subject> subject = new ArrayList<Subject>();

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Basic()
	private int length = 0;

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@ManyToOne(cascade = { CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH }, optional = false)
	private Level level = null;

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@ManyToOne(cascade = { CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH }, optional = false)
	private Description description = null;

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Basic()
	private String videoURL = null;

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Basic()
	@Temporal(TemporalType.DATE)
	private Date enrollDueDate = null;

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Basic()
	private String link = "";

	/**
	 * Returns the value of '<em><b>cid</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>cid</b></em>' feature
	 * @generated
	 */
	public String getCid() {
		return cid;
	}

	/**
	 * Sets the '{@link Course#getCid() <em>cid</em>}' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newCid
	 *            the new value of the '{@link Course#getCid() cid}' feature.
	 * @generated
	 */
	public void setCid(String newCid) {
		cid = newCid;
	}

	/**
	 * Returns the value of '<em><b>name</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>name</b></em>' feature
	 * @generated
	 */
	public String getName() {
		return name;
	}

	/**
	 * Sets the '{@link Course#getName() <em>name</em>}' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newName
	 *            the new value of the '{@link Course#getName() name}' feature.
	 * @generated
	 */
	public void setName(String newName) {
		name = newName;
	}

	/**
	 * Returns the value of '<em><b>thumbURL</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>thumbURL</b></em>' feature
	 * @generated
	 */
	public String getThumbURL() {
		return thumbURL;
	}

	/**
	 * Sets the '{@link Course#getThumbURL() <em>thumbURL</em>}' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newThumbURL
	 *            the new value of the '{@link Course#getThumbURL() thumbURL}'
	 *            feature.
	 * @generated
	 */
	public void setThumbURL(String newThumbURL) {
		thumbURL = newThumbURL;
	}

	/**
	 * Returns the value of '<em><b>availability</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>availability</b></em>' feature
	 * @generated
	 */
	public Availability getAvailability() {
		return availability;
	}

	/**
	 * Sets the '{@link Course#getAvailability() <em>availability</em>}'
	 * feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newAvailability
	 *            the new value of the '{@link Course#getAvailability()
	 *            availability}' feature.
	 * @generated
	 */
	public void setAvailability(Availability newAvailability) {
		availability = newAvailability;
	}

	/**
	 * Returns the value of '<em><b>startDate</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>startDate</b></em>' feature
	 * @generated
	 */
	public Date getStartDate() {
		return startDate;
	}

	/**
	 * Sets the '{@link Course#getStartDate() <em>startDate</em>}' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newStartDate
	 *            the new value of the '{@link Course#getStartDate() startDate}'
	 *            feature.
	 * @generated
	 */
	public void setStartDate(Date newStartDate) {
		startDate = newStartDate;
	}

	/**
	 * Returns the value of '<em><b>endData</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>endData</b></em>' feature
	 * @generated
	 */
	public Date getEndData() {
		return endData;
	}

	/**
	 * Sets the '{@link Course#getEndData() <em>endData</em>}' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newEndData
	 *            the new value of the '{@link Course#getEndData() endData}'
	 *            feature.
	 * @generated
	 */
	public void setEndData(Date newEndData) {
		endData = newEndData;
	}

	/**
	 * Returns the value of '<em><b>offer</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>offer</b></em>' feature
	 * @generated
	 */
	public List<School> getOffer() {
		return offer;
	}

	/**
	 * Sets the '{@link Course#getOffer() <em>offer</em>}' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newOffer
	 *            the new value of the '{@link Course#getOffer() offer}'
	 *            feature.
	 * @generated
	 */
	public void setOffer(List<School> newOffer) {
		offer = newOffer;
	}

	/**
	 * Returns the value of '<em><b>instructor</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>instructor</b></em>' feature
	 * @generated
	 */
	public List<Instructor> getInstructor() {
		return instructor;
	}

	/**
	 * Sets the '{@link Course#getInstructor() <em>instructor</em>}' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newInstructor
	 *            the new value of the '{@link Course#getInstructor()
	 *            instructor}' feature.
	 * @generated
	 */
	public void setInstructor(List<Instructor> newInstructor) {
		instructor = newInstructor;
	}

	/**
	 * Returns the value of '<em><b>isMobile</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>isMobile</b></em>' feature
	 * @generated
	 */
	public boolean isIsMobile() {
		return isMobile;
	}

	/**
	 * Sets the '{@link Course#isIsMobile() <em>isMobile</em>}' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newIsMobile
	 *            the new value of the '{@link Course#isIsMobile() isMobile}'
	 *            feature.
	 * @generated
	 */
	public void setIsMobile(boolean newIsMobile) {
		isMobile = newIsMobile;
	}

	/**
	 * Returns the value of '<em><b>year</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>year</b></em>' feature
	 * @generated
	 */
	public int getYear() {
		return year;
	}

	/**
	 * Sets the '{@link Course#getYear() <em>year</em>}' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newYear
	 *            the new value of the '{@link Course#getYear() year}' feature.
	 * @generated
	 */
	public void setYear(int newYear) {
		year = newYear;
	}

	/**
	 * Returns the value of '<em><b>id</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>id</b></em>' feature
	 * @generated
	 */
	public long getId() {
		return id;
	}

	/**
	 * Sets the '{@link Course#getId() <em>id</em>}' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newId
	 *            the new value of the '{@link Course#getId() id}' feature.
	 * @generated
	 */
	public void setId(long newId) {
		id = newId;
	}

	/**
	 * Returns the value of '<em><b>category</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>category</b></em>' feature
	 * @generated
	 */
	public List<Category> getCategory() {
		return category;
	}

	/**
	 * Sets the '{@link Course#getCategory() <em>category</em>}' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newCategory
	 *            the new value of the '{@link Course#getCategory() category}'
	 *            feature.
	 * @generated
	 */
	public void setCategory(List<Category> newCategory) {
		category = newCategory;
	}

	/**
	 * Returns the value of '<em><b>subject</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>subject</b></em>' feature
	 * @generated
	 */
	public List<Subject> getSubject() {
		return subject;
	}

	/**
	 * Sets the '{@link Course#getSubject() <em>subject</em>}' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newSubject
	 *            the new value of the '{@link Course#getSubject() subject}'
	 *            feature.
	 * @generated
	 */
	public void setSubject(List<Subject> newSubject) {
		subject = newSubject;
	}

	/**
	 * Returns the value of '<em><b>length</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>length</b></em>' feature
	 * @generated
	 */
	public int getLength() {
		return length;
	}

	/**
	 * Sets the '{@link Course#getLength() <em>length</em>}' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newLength
	 *            the new value of the '{@link Course#getLength() length}'
	 *            feature.
	 * @generated
	 */
	public void setLength(int newLength) {
		length = newLength;
	}

	/**
	 * Returns the value of '<em><b>level</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>level</b></em>' feature
	 * @generated
	 */
	public Level getLevel() {
		return level;
	}

	/**
	 * Sets the '{@link Course#getLevel() <em>level</em>}' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newLevel
	 *            the new value of the '{@link Course#getLevel() level}'
	 *            feature.
	 * @generated
	 */
	public void setLevel(Level newLevel) {
		level = newLevel;
	}

	/**
	 * Returns the value of '<em><b>description</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>description</b></em>' feature
	 * @generated
	 */
	public Description getDescription() {
		return description;
	}

	/**
	 * Sets the '{@link Course#getDescription() <em>description</em>}' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newDescription
	 *            the new value of the '{@link Course#getDescription()
	 *            description}' feature.
	 * @generated
	 */
	public void setDescription(Description newDescription) {
		description = newDescription;
	}

	/**
	 * Returns the value of '<em><b>videoURL</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>videoURL</b></em>' feature
	 * @generated
	 */
	public String getVideoURL() {
		return videoURL;
	}

	/**
	 * Sets the '{@link Course#getVideoURL() <em>videoURL</em>}' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newVideoURL
	 *            the new value of the '{@link Course#getVideoURL() videoURL}'
	 *            feature.
	 * @generated
	 */
	public void setVideoURL(String newVideoURL) {
		videoURL = newVideoURL;
	}

	/**
	 * Returns the value of '<em><b>enrollDueDate</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>enrollDueDate</b></em>' feature
	 * @generated
	 */
	public Date getEnrollDueDate() {
		return enrollDueDate;
	}

	/**
	 * Sets the '{@link Course#getEnrollDueDate() <em>enrollDueDate</em>}'
	 * feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newEnrollDueDate
	 *            the new value of the '{@link Course#getEnrollDueDate()
	 *            enrollDueDate}' feature.
	 * @generated
	 */
	public void setEnrollDueDate(Date newEnrollDueDate) {
		enrollDueDate = newEnrollDueDate;
	}

	/**
	 * Returns the value of '<em><b>link</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>link</b></em>' feature
	 * @generated
	 */
	public String getLink() {
		return link;
	}

	/**
	 * Sets the '{@link Course#getLink() <em>link</em>}' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newLink
	 *            the new value of the '{@link Course#getLink() link}' feature.
	 * @generated
	 */
	public void setLink(String newLink) {
		link = newLink;
	}

	/**
	 * A toString method which prints the values of all EAttributes of this
	 * instance. <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Override
	public String toString() {
		return "Course " + " [cid: " + getCid() + "]" + " [name: " + getName() + "]" + " [thumbURL: " + getThumbURL()
				+ "]" + " [startDate: " + getStartDate() + "]" + " [endData: " + getEndData() + "]" + " [isMobile: "
				+ isIsMobile() + "]" + " [year: " + getYear() + "]" + " [id: " + getId() + "]" + " [length: "
				+ getLength() + "]" + " [videoURL: " + getVideoURL() + "]" + " [enrollDueDate: " + getEnrollDueDate()
				+ "]" + " [link: " + getLink() + "]";
	}
}
