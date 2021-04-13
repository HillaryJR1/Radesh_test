<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import = "com.item" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Item</title>
</head>
<body>


<%
	String itemCode = request.getParameter("itemID");
%>


		<form method="post" action="deleteItem.jsp">
			<h3>Confirm Item Deletion?</h3>
			Item code: <input name="itemCode" type="text" value="<%=itemCode%>" readonly><br>
			<input name="btnSubmit" type="submit" value="Delete">
		</form>
		
		
		<%
			out.print(session.getAttribute("statusMsg"));
		%>
		<br><br>
		
		<%

	if (request.getParameter("itemID") != null)
	{
		item itemObj = new item();
		
		String stsMsg = itemObj.deleteItem(Integer.parseInt(request.getParameter("itemID")));
		session.setAttribute("statusMsg", stsMsg);
	}	



	%>
		
		
		
		
		<%
			item itemObj = new item();
			out.print(itemObj.readItems());
		%>
</body>
</html>