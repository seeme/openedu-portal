package fcu.openedu.domain;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * A representation of the model object '<em><b>Category</b></em>'. <!--
 * begin-user-doc --> <!-- end-user-doc -->
 * 
 * @generated
 */
@Entity(name = "category")
public class Category {

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Basic(optional = false)
	@Id()
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id = 0;

	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Basic()
	private String name = null;

	/**
	 * Returns the value of '<em><b>id</b></em>' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @return the value of '<em><b>id</b></em>' feature
	 * @generated
	 */
	public int getId() {
		return id;
	}

	/**
	 * Sets the '{@link Category#getId() <em>id</em>}' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newId
	 *            the new value of the '{@link Category#getId() id}' feature.
	 * @generated
	 */
	public void setId(int newId) {
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
	 * Sets the '{@link Category#getName() <em>name</em>}' feature.
	 *
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @param newName
	 *            the new value of the '{@link Category#getName() name}'
	 *            feature.
	 * @generated
	 */
	public void setName(String newName) {
		name = newName;
	}

	/**
	 * A toString method which prints the values of all EAttributes of this
	 * instance. <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Override
	public String toString() {
		return "Category " + " [id: " + getId() + "]" + " [name: " + getName() + "]";
	}
}
