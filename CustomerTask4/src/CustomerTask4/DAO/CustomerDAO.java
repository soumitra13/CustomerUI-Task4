package CustomerTask4.DAO;

import java.util.List;

import CustomerTask4.Entities.*;

public interface CustomerDAO {

	public int insertCustomerDetails(Customer customer);
	public int updateCustomerDetails(Customer customer);
	public int deleteCustomerDetails(String custId);
	public Customer viewCustomerDetails(String custId);
	public List<Customer> viewAllCustomerDetails();
	
}
