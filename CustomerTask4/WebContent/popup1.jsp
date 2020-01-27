<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
	
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous"
    />

    <title>Customer Registration</title>
  </head>
  <body>
    <div>
      <h2 style="margin: 10px 710px;">Customer Form</h2>

      <div class="jumbotron" style="margin:25px 500px 100px;">
        <form name="customer_regform" action="CustomerRegister" method="post">
          <div>
            <label for="customerid"><b>Customer ID</b></label>
            <input
              class="form-control"
              type="text"
              placeholder="Customer Id"
              name="customer_id"
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

          <div class="container">
            <label for="gender"> <b>Gender</b> </label>
            <!-- <input class="form-control" type="number" placeholder="Enter Zipcode" name="customer_zipcode" id="zipcode"> -->
            <select id="Gender" name="gender">
              <option value="0">Male</option>
              <option value="1">Female</option>
            </select>
           <br/>
          
            <b>CreditType:</b>
            <select id="customercreditcardtype" name="customercreditcardtype">
              <option value="Master">Master</option>
              <option value="Visa">Visa</option>
              <option value="Amex">Amex</option>
            </select>
          </div>

          <br />

          <button
            type="submit"
            value="popup"
            name="submit"
            class="btn btn-primary"
            id="btnRegister"
            style=" position: relative; margin-left: 250px;"
            action="popup.jsp"
          >
            Generate
          </button>
          <br /><br />
          <p style="color:red;" align="center" id="error_message"></p>
        </form>
      </div>
    </div>
    <div class="container">
<div class="card">
    <div class="card-body">
   
    <br />&nbsp;
   <table id="example2" class="table table-bordered table-hover">
                <thead style="background-color: #b3d1ff">
               <tr>
			<th></th>
			<th></th>
			<th style="white-space: nowrap;">Customer Id</th>
			<th style="white-space: nowrap;">First Name</th>
			<th style="white-space: nowrap;">Last Name</th>
			<th style="white-space: nowrap;">Date of Birth</th>
			<th style="white-space: nowrap;">Gender</th>
			<th style="white-space: nowrap;">Customer Credit Card Type</th>
				
			</tr>
			 </thead>
			 <tbody>
			<c:forEach items="${customers}" var="customer">
			<tr>
			
	
			<td style="white-space: nowrap;">${customer.custId}</td>
			<td style="white-space: nowrap;">${customer.firstName}</td>
			<td style="white-space: nowrap;">${customer.lastName}</td>
		    <td style="white-space: nowrap;">${customer.dateofbirth}</td>
		    <td style="white-space: nowrap;">${customer.gender}</td>
		    <td style="white-space: nowrap;">${customer.customercreditcardtype}</td>
			</tr>	
			</c:forEach>
			
			 </tbody>
		</table>
		 </div>
  </div>
</div>
    
  </body>
</html>
