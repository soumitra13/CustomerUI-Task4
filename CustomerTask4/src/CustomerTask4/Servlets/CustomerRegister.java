package CustomerTask4.Servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import CustomerTask4.DAO.CustomerDAO;
import CustomerTask4.DAO.CustomerDAOImpl;
import CustomerTask4.Entities.Customer;

@WebServlet("/CustomerRegister")
public class CustomerRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CustomerRegister() {
        super();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
		processRequest(request, response);
	}
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
		processRequest(request, response);
	}	
	
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		CustomerDAO customerDAO = new CustomerDAOImpl();
		Customer customer = new Customer();
		Date date = new Date();
		String submitType = request.getParameter("submit");
	
		String custId = "";
			 
		if (submitType.equals("insert")) {
			
			customer.setFirstName(request.getParameter("Custfirst"));
			customer.setLastName(request.getParameter("Custlast"));
			customer.setDateOfBirth(date);
			customer.setGender(Boolean.parseBoolean(request.getParameter("gender")));
			customer.setCustomerCreditCardType(request.getParameter("customercreditcardtype")); 
			int a = customerDAO.insertCustomerDetails(customer); 
			System.out.println(a); 
			custId = customerDAO.getCustomerId();
			if(a==1)
			  {
				  customer = customerDAO.viewCustomerDetails(custId);
				  request.setAttribute("customers", customer);
				  request.getRequestDispatcher("Popup.jsp").forward(request, response);
			  }else {
					  System.out.println("Does not go inside"); 
			  }

		}else if(submitType.equals("view")) {
			
			custId = request.getParameter("CID");
			
			customer = customerDAO.viewCustomerDetails(custId);
			request.setAttribute("customers", customer);
			System.out.println(customer);
//			response.sendRedirect("Popup.jsp");
			request.getRequestDispatcher("Popup.jsp").forward(request, response);   
			
		}else if(submitType.equals("delete")) {
			custId = request.getParameter("CID");
			customer = customerDAO.viewCustomerDetails(custId);
			int a = customerDAO.deleteCustomerDetails(custId);			  
			
		  	request.setAttribute("customers", customer);
		  	request.getRequestDispatcher("Popup.jsp").forward(request, response);
	  
		}else if(submitType.equals("update")) {
			custId = request.getParameter("CID");
			customer.setFirstName(request.getParameter("Custfirst"));
			customer.setLastName(request.getParameter("Custlast"));
			customer.setCustomerCreditCardType(request.getParameter("customercreditcardtype"));
		    customer.setCustId(request.getParameter("CID"));
			int a = customerDAO.updateCustomerDetails(customer);
			if(a==1)
			  {
				  customer = customerDAO.viewCustomerDetails(custId);
				  request.setAttribute("customers", customer);
				  request.getRequestDispatcher("Popup.jsp").forward(request, response);
			  }else {
					  System.out.println("Does not go inside"); 
			  }
		}
			
			  		
	}
}
