package fcu.openedu.domain;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

/**
 * A representation of the model object '<em><b>Subject</b></em>'. <!--
 * begin-user-doc --> <!-- end-user-doc -->
 * 
 * @generated
 */
@Entity(name = "subject")
public class Subject {

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
	private String name = null;

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@ManyToOne(cascade = { CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH })
	private Category category = null;

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
	 * Sets the '{@link Subject#getId() <em>id</em>}' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newId
	 *            the new value of the '{@link Subject#getId() id}' feature.
	 * @generated
	 */
	public void setId(long newId) {
		id = newId;
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
	 * Sets the '{@link Subject#getName() <em>name</em>}' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newName
	 *            the new value of the '{@link Subject#getName() name}' feature.
	 * @generated
	 */
	public void setName(String newName) {
		name = newName;
	}

	/**
	 * Returns the value of '<em><b>category</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>category</b></em>' feature
	 * @generated
	 */
	public Category getCategory() {
		return category;
	}

	/**
	 * Sets the '{@link Subject#getCategory() <em>category</em>}' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newCategory
	 *            the new value of the '{@link Subject#getCategory() category}'
	 *            feature.
	 * @generated
	 */
	public void setCategory(Category newCategory) {
		category = newCategory;
	}

	/**
	 * A toString method which prints the values of all EAttributes of this
	 * instance. <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Override
	public String toString() {
		return "Subject " + " [id: " + getId() + "]" + " [name: " + getName() + "]";
	}
}
