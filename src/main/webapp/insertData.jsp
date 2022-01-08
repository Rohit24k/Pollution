<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fill the Data</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<div align="center">
<body>
<h1>Enter Data Here</h1>
<form action="SaveServlet" method="post">
  
  <div class="form-group col-md-5">
    <label for="exampleInputEmail1">CO2</label>
    <input type="text" class="form-control" name="co2"  placeholder="Enter Co2 Level">
  </div>
  
  <div class="form-group col-md-5">
    <label for="Temperature">Temperature</label>
    <input type="text" class="form-control" name="temperature" placeholder="Enter Temperature">
  </div>
 
 <div class="form-group col-md-5">
    <label for="Temperature">Humidity</label>
    <input type="text" class="form-control" name="humidity" placeholder="Enter Humidity">
  </div>
  
  <div class="form-group col-md-5">
    <label for="Temperature">PM2</label>
    <input type="text" class="form-control" name="pm2" placeholder="Enter Pm2">
  </div>


<!--     <div class="form-group col-md-5"> -->
<!--       <label for="Customer">Name of Customer</label> -->
<!--       <input type="text" class="form-control" id="customerName" placeholder="Customer Name"> -->
<!--     </div> -->
    
<!--     <div class="form-group col-md-5"> -->
<!--       <label for="Branch">Branch ID</label> -->
<!--       <input type="text" class="form-control" id="branchID" placeholder="Enter Branch ID"> -->
<!--     </div> -->

  <button type="submit" class="btn btn-primary">Submit</button>
</form>



</body>
</div>
</html>