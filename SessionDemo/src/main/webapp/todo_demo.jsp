<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Tạo form -->
	<form action="todo_demo.jsp">
		Add new item: <input type="text" name="theItem"/>
		<input type="submit" value="Submit">
	</form>
	<% 
		// Lấy todo item từ session
		List<String> items = (List<String>) session.getAttribute("MyToDoList");
		// Nếu To Do item ko tồn tại: Tạo cái mới:
		if(items == null){
			items = new ArrayList<String>();
			session.setAttribute("MyToDoList", items);
		}
		// Ktra form để thêm vào 
		String theItem = request.getParameter("theItem");
		if(theItem != null){
			items.add(theItem);
		}
	%>
	<!-- hiển thị To Do item từ session -->
	<hr>
	<b>To list items:</b><br>
	<ol>
		<%
			for(String temp : items){
				out.println("<li>" + temp + "</li>");
			}
		%>
	</ol>
</body>
</html>