<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


<title>Welcome</title>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="insertData.jsp">Enter Pollution Data</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="CustomersList.jsp">Customers</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0" action="SearchByDate.jsp">
      <input class="form-control mr-sm-2" name="search" type="search" placeholder="Pollution Data by Date" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search </button>
    </form>
    
  </div>
</nav>

<div class="container"> 
       <div style='position:absolute;zindex:0;left:0;top:20;width:100%;height:100%'>
           <img src='image/pollution.jpg' style='width:100%;height:80%' alt='[]' />
 </div>
</body>

</html>