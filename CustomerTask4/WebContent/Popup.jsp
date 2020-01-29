<%@page import="java.io.PrintWriter"%>
<%@page import="CustomerTask4.Entities.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Customer Form</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
    <link
      href="https://fonts.googleapis.com/css?family=Poppins&display=swap"
      rel="stylesheet"
    />
    <!-- Latest compiled and minified CSS -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
      integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
      crossorigin="anonymous"
    />

    <!-- Latest compiled and minified JavaScript -->
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"
      integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
      crossorigin="anonymous"
    ></script>
    <script src="https://kit.fontawesome.com/a81368914c.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  </head>
  <body>
  	<div class="container">
  		<div class="col-md-3">
	        <img
	          class="img-responsive"
	          src="img/img.svg"
	          style="width: 500px; height: 600px"
	        />
      	</div>
	  	<div class="col-md-8">
	  		<form name="customer_regform" id="customer_regform" action="CustomerRegister" method="post">
	          <img
	            class="img-responsive"
	            style="width: 100px;"
	            src="img/avatar.svg"
	          />
	          <h2>Welcome</h2>
	          <div>
	            <label for="customerid"><b>Customer ID</b></label>
	            <input
	              class="form-control"
	              type="text"
	              placeholder="Customer Id"
	              name="CID"
	              id="CID"
	            />
	            <br />
	          </div>
	          <div>
	            <label for="firstname"> <b>First Name</b> </label>
	            <input
	              class="form-control"
	              type="text"
	              placeholder="Enter first name"
	              name="Custfirst"
	              id="firstname"
	            />
	            <br />
	          </div>
	
	          <div>
	            <label for="lastname"> <b>Last Name</b> </label>
	            <input
	              class="form-control"
	              type="text"
	              placeholder="Enter last name"
	              name="Custlast"
	              id="lastname"
	            />
	            <br />
	          </div>
	
	          <div>
	            <label for="dateofbirth"> <b>Date Of Birth</b> </label>
	            <input
	              class="form-control"
	              type="date"
	              name="dateofbirth"
	              id="date"
	            />
	            <br />
	          </div>
	
	          <div class="form-group">
	            <label for="gender"> <b>Gender</b> </label>
	            <!-- <input class="form-control" type="number" placeholder="Enter Zipcode" name="customer_zipcode" id="zipcode"> -->
	            <select id="gender" name="gender" class="form-control">
	              <option value="" selected>Select One</option>
	              <option value= 0 >Female</option>
	              <option value= 1>Male</option>
	            </select>
	            <br />
	          </div>
	          <div>
	            <label for="customercreditcardtype"><b>CreditType:</b></label>
	            <select
	              id="customercreditcardtype"
	              name="customercreditcardtype"
	              class="form-control"
	            >
	              <option value="" selected>Select One</option>	
	              <option value="Master">Master</option>
	              <option value="Visa">Visa</option>
	              <option value="Amex">American Express</option>
	            </select>
	          </div>
	          <br />
	          <button
	            type="submit"
	            name="submit"
	            value="insert"
	        	class="btn btn-primary"
	            id="btnRegister">
	            Generate
	          </button>
	
	          <button
	            type="submit"
	            name="submit"
	            value="view"
	            id="btnRegister"
	            class="btn btn-primary"
	            
	          >
	            View Customer
	          </button>
	          <button
	            type="submit"
	            name="submit"
	            value="delete"
	            id="btnRegister"
	            class="btn btn-primary"
	            
	          >
	            Delete Customer
	          </button>
	          <button
	            type="submit"
	            name="submit"
	            value="update"
	            id="btnRegister"
	            class="btn btn-primary"
	            
	          >
	            Update Customer
	          </button>
	          <br />
	          <p style="color:red;" align="center" id="error_message"></p>
	        </form>
	  	</div>
	  	<div class="col-md-1"></div>
  	</div>
  	<div class="container">
  		<div class="col-md-1"></div>
        <div class="col=md-10">
        	<c:if test = "${customers != null}">
            <table class="table" id="customerTable">
                <thead class="thead-primary">
                    <tr>
                        <th scope="col">Customer Id</th>
                        <th scope="col">First Name</th>
                        <th scope="col">Last Name</th>
                        <th scope="col">Date of Birth</th>
                        <th scope="col">Gender</th>
                        <th scope="col">Customer Credit Card Type</th>
                    </tr>
                </thead>
                <tbody>
                
                    <tr>
                        <td scope="row">${customers.custId}</td>
                        <td scope="row">${customers.firstName}</td>
                        <td scope="row">${customers.lastName}</td>
                        <td scope="row">${customers.dateOfBirth}</td>
                        <c:choose>
                        <c:when test="${customers.gender == 1}">
                        <td scope="row">Male</td>
                        </c:when>
                        <c:otherwise>
                        <td scope="row">Female</td>
                        </c:otherwise>
                        </c:choose>
                        <td scope="row">${customers.customerCreditCardType}</td>
                    </tr>
                   
                </tbody>
            </table>
            </c:if> 
        </div>
      <div class="col-md-1"></div>
  	</div>
  </body>
</html>