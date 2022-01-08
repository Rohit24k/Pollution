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
<h1 class="card-title">Co2 &nbsp Pm2   &nbsp   Humidity    &nbsp  Temperature   AddedDate </h1>
<%
String date=request.getParameter("search");
System.out.println(date);
Session sess=FactoryProvider.getFactory().openSession();
Criteria cr=sess.createCriteria(PollutionData.class);
cr.add(Restrictions.like("addedDate", "%"+date+"%"));
/* cr.add(Restrictions.like("co2","%"+date+"%")); */
List<PollutionData> list=cr.list();


for(PollutionData pd: list){
%>




  <h2 ><%=pd.getCo2()+" &nbsp &nbsp "+ pd.getPm2()+" &emsp;&emsp;&emsp;"+pd.getHumidity()+" &emsp;&emsp;&emsp;&emsp;&emsp;"+pd.getTemperature()+"&emsp;&emsp;&emsp;"+pd.getAddedDate()  %></h2>



<%-- <h5 class="card-title">Co2: <%= pd.getCo2() %></h5>
<h5 class="card-text">Humidity: <%= pd.getHumidity() %></h5>
<h5 class="card-title">Pm2: <%= pd.getPm2() %></h5>
<h5 class="card-title">Temperature: <%= pd.getTemperature() %></h5>
<p class="card-title">AddedDate: <%= pd.getAddedDate() %></p>
</div> --%>
<% 
sess.close();
}%>
 

</body>
</div>
</html>