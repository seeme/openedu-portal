package fcu.openedu.domain;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * A representation of the model object '<em><b>Description</b></em>'. <!--
 * begin-user-doc --> <!-- end-user-doc -->
 * 
 * @generated
 */
@Entity(name = "description")
public class Description {

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
	@Basic()
	private String intro = null;

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Basic()
	private String target = null;

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Basic()
	private String objective = null;

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Basic()
	private String characteristic = null;

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Basic()
	private String schedule = null;

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Basic()
	private String assessment = null;

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Basic()
	private String prerequisite = null;

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
	 * Sets the '{@link Description#getId() <em>id</em>}' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newId
	 *            the new value of the '{@link Description#getId() id}' feature.
	 * @generated
	 */
	public void setId(long newId) {
		id = newId;
	}

	/**
	 * Returns the value of '<em><b>intro</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>intro</b></em>' feature
	 * @generated
	 */
	public String getIntro() {
		return intro;
	}

	/**
	 * Sets the '{@link Description#getIntro() <em>intro</em>}' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newIntro
	 *            the new value of the '{@link Description#getIntro() intro}'
	 *            feature.
	 * @generated
	 */
	public void setIntro(String newIntro) {
		intro = newIntro;
	}

	/**
	 * Returns the value of '<em><b>target</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>target</b></em>' feature
	 * @generated
	 */
	public String getTarget() {
		return target;
	}

	/**
	 * Sets the '{@link Description#getTarget() <em>target</em>}' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newTarget
	 *            the new value of the '{@link Description#getTarget() target}'
	 *            feature.
	 * @generated
	 */
	public void setTarget(String newTarget) {
		target = newTarget;
	}

	/**
	 * Returns the value of '<em><b>objective</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>objective</b></em>' feature
	 * @generated
	 */
	public String getObjective() {
		return objective;
	}

	/**
	 * Sets the '{@link Description#getObjective() <em>objective</em>}' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newObjective
	 *            the new value of the '{@link Description#getObjective()
	 *            objective}' feature.
	 * @generated
	 */
	public void setObjective(String newObjective) {
		objective = newObjective;
	}

	/**
	 * Returns the value of '<em><b>characteristic</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>characteristic</b></em>' feature
	 * @generated
	 */
	public String getCharacteristic() {
		return characteristic;
	}

	/**
	 * Sets the '{@link Description#getCharacteristic() <em>characteristic</em>}
	 * ' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newCharacteristic
	 *            the new value of the '{@link Description#getCharacteristic()
	 *            characteristic}' feature.
	 * @generated
	 */
	public void setCharacteristic(String newCharacteristic) {
		characteristic = newCharacteristic;
	}

	/**
	 * Returns the value of '<em><b>schedule</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>schedule</b></em>' feature
	 * @generated
	 */
	public String getSchedule() {
		return schedule;
	}

	/**
	 * Sets the '{@link Description#getSchedule() <em>schedule</em>}' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newSchedule
	 *            the new value of the '{@link Description#getSchedule()
	 *            schedule}' feature.
	 * @generated
	 */
	public void setSchedule(String newSchedule) {
		schedule = newSchedule;
	}

	/**
	 * Returns the value of '<em><b>assessment</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>assessment</b></em>' feature
	 * @generated
	 */
	public String getAssessment() {
		return assessment;
	}

	/**
	 * Sets the '{@link Description#getAssessment() <em>assessment</em>}'
	 * feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newAssessment
	 *            the new value of the '{@link Description#getAssessment()
	 *            assessment}' feature.
	 * @generated
	 */
	public void setAssessment(String newAssessment) {
		assessment = newAssessment;
	}

	/**
	 * Returns the value of '<em><b>prerequisite</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>prerequisite</b></em>' feature
	 * @generated
	 */
	public String getPrerequisite() {
		return prerequisite;
	}

	/**
	 * Sets the '{@link Description#getPrerequisite() <em>prerequisite</em>}'
	 * feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newPrerequisite
	 *            the new value of the '{@link Description#getPrerequisite()
	 *            prerequisite}' feature.
	 * @generated
	 */
	public void setPrerequisite(String newPrerequisite) {
		prerequisite = newPrerequisite;
	}

	/**
	 * A toString method which prints the values of all EAttributes of this
	 * instance. <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Override
	public String toString() {
		return "Description " + " [id: " + getId() + "]" + " [intro: " + getIntro() + "]" + " [target: " + getTarget()
				+ "]" + " [objective: " + getObjective() + "]" + " [characteristic: " + getCharacteristic() + "]"
				+ " [schedule: " + getSchedule() + "]" + " [assessment: " + getAssessment() + "]" + " [prerequisite: "
				+ getPrerequisite() + "]";
	}
}
