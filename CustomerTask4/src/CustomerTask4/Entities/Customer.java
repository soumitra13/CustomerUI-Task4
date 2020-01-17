package CustomerTask4.Entities;

import java.util.Date;

public class Customer {
	
	private String custId;
	private String firstName;
	private String lastName;
	private Date dateOfBirth;
	private String gender;
	private String customerCreditCardType;
	
	
	public String getCustId() {
		return custId;
	}
	public void setCustId(String custId) {
		this.custId = custId;
	}
	
	public String getFirstName() {
		return firstName;
	}
	
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getLastName() {
		return lastName;
	}
	
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public Date getDateOfBirth() {
		return dateOfBirth;
	}
	
	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	
	public String getGender() {
		return gender;
	}
	
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getCustomerCreditCardType() {
		return customerCreditCardType;
	}
	
	public void setCustomerCreditCardType(String customerCreditCardType) {
		this.customerCreditCardType = customerCreditCardType;
	}
}
