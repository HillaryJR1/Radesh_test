<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <%@page import = "com.item" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Item</title>
</head>
<body>


<%
		String itemCode = request.getParameter("itemCode");
		String itemName = request.getParameter("itemName");
		double itemPrice = Double.parseDouble(request.getParameter("itemPrice"));
		String itemDesc = request.getParameter("itemDesc");
		
		
	%>



		<h1>Items Management</h1>
		
	<form method="post" action="updateItem.jsp">
	
	
	Item code: <input name="itemCode" type="text"   value = "<%= itemCode %>"><br>
	Item name: <input name="itemName" type="text"   value = "<%= itemName %>" ><br> 
	Item price: <input name="itemPrice" type="text" value = "<%= itemPrice %>"><br>
    Item description: <input name="itemDesc" type="text"  value = "<%= itemDesc %>" ><br> 
    <input name="btnSubmit" type="submit" value="update">
    
    </form>
    
    
    
	<%
	out.print(session.getAttribute("statusMsg"));
	%>
	
	
	<%

	if (request.getParameter("itemID") != null)
	{
		item itemObj = new item();
		
		String stsMsg = itemObj.updateItem(request.getParameter("itemCode"),
		request.getParameter("itemName"),
		request.getParameter("itemPrice"),
		request.getParameter("itemDesc"));
		session.setAttribute("statusMsg", stsMsg);
	}	



	%>


	<%
   item itemObj = new item();
   out.print(itemObj.readItems());
    %>


</body>
</html>