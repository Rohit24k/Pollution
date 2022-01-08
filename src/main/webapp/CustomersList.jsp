<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.Helper.FactoryProvider"  %>
    <%@page import="com.Entity.PollutionData" %>
    <%@page import="com.Entity.Customer" %>
    <%@page import="org.hibernate.Criteria" %>
     <%@page import="org.hibernate.criterion.Restrictions"%>
    <%@page import="org.hibernate.Session" %>
    <%@page import="org.hibernate.query.Query" %>
     <%@page import="java.util.List" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Page</title>
<%@ include file="all_css.jsp" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<div align="center">
<body>
<h1 class="card-title">ID Name Branch_ID</h1>
<%
Session sess=FactoryProvider.getFactory().openSession();
Criteria cr=sess.createCriteria(Customer.class);
List<Customer> list=cr.list();


for(Customer c: list){
%>




  <h2 ><%= c.getCust_id()+" &nbsp &nbsp "+ c.getCust_name()+" &emsp;&emsp;&emsp;"+c.getBranch_id()  %></h2> 

</div> 
<% 
sess.close();
}%>
 

</body>
</html>