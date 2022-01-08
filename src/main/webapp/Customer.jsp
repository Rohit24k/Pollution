<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Enter Customer Details</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<div align="center">
<form action="saveCustomerServlet" method="post">
<body>

<div class="form-group col-md-5">
    <label for="Customer Name">Customer Name</label>
    <input type="text" class="form-control" name="cName"  placeholder="Enter Customer name">
  </div>
  
  <div class="form-group col-md-5">
    <label for="Branch ID">Branch ID</label>
    <input type="text" class="form-control" name="branchId" placeholder="Enter Branch Id">
  </div>


  <button type="submit" class="btn btn-primary">Submit</button>


</body>
</form>
</div>
</html>