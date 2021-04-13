<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.Item"%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Item Management</title>
</head>
<body>



<%
if (request.getParameter("itemCode") == null)  
{ 	 
 	Item itemObj = new Item(); 
 	itemObj.connect();//For testing the connect method 
} 

%>


</body>
</html>