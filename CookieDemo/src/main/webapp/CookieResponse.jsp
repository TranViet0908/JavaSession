<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirmation</title>
</head>
<body>
	<%
        // read form data
        String favLang = request.getParameter("favorite Language");
        if (favLang != null && !favLang.isEmpty() && favLang != "") {
            // Create the cookie
            Cookie theCookie = new Cookie("myApp.favoriteLanguage", favLang);
            // set the life span ... total number of seconds (yuk!)
            theCookie.setMaxAge(60*60*24*365); // <-- for one year
            // send cookie to browser
            response.addCookie(theCookie);
    %>
    
    Thanks! We set your favorite language to: <%= favLang %>
    <%
        } else {
    %>
    
    No favorite language was provided.
    <%
        }
    %>
    <br>
    <a href="CookieHomepage.jsp">Return to homepage</a>
</body>
</html>