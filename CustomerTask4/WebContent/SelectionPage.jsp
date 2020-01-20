<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>

<!-- Font -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">

<style>
  
  .bg-1 {
    background-color: #787a74; /* Grey */
    color: #000000; /*black*/
  }
  
  
  .bg-2 {
    background-color: #000000; /* black */
    color: #ffffff;  /*white*/
  }
  .bg-3 {
    background-color: #ffffff; /* White */
    color: #555555;
  }
 
  head{
  font-family: 'Ubuntu Bold', sans-serif;
  
  }
  body {
font-family: 'Ubuntu Bold', sans-serif;
}
  .container-fluid {
  
  background-color:#020300;/*black*/
  padding-top: 70px;
  padding-bottom: 70px;
}
 .jumbotron{
 background-color:#e4f5c1;
 }
.btn 
{
  background-color:#e4f5c1;
  color:#000000;
}
  </style>
</head>
<body>

   <form>

Customer ID<br><input type="text" name="CID" value="" ><br/>  
First Name<br><input type="text" name="Custfirst"  value="" ><br/>
Last Name<br><input type="text" name="Custlast"  value="" ><br/>  
Date of birth<br><input type="date" value=""></br>
Customer creditcard type:<br><select>
  <option value="Master">Master</option>
  <option value="Visa">Visa</option>
  <option value="Amex">Amex</option>
  
</select>


<input type="submit" value="Submit"/>  


</form>  

</body>
</html>