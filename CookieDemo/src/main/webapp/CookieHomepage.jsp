<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Training Portal</title>
</head>
<body>
	<h3>Training Portal</h3>
	<!-- Read the favorite programming language cookie -->
	<%
		// the default ... if there are no cookie
		String favLang = "Nope";
		// get the cookie from the browser request
		Cookie[] theCookies = request.getCookies();
		// find our favorite language cookie
		if (theCookies != null){
			for (Cookie tempCookie : theCookies) {
				if ("myApp.favoriteLanguage".equals(tempCookie.getName())) {
					favLang = tempCookie.getValue();
					break;
				}
			}
		}
	%>
	<!-- now show a personalized page ... use the "favLang" variable -->
<!-- show new books for this lang -->
	<h4>New Books for <%= favLang %></h4>
	<ul>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
	</ul>
	<h4>Latest News Reports for <%= favLang %></h4>
	<ul>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
	</ul>
	<h4>Hot Jobs for <%= favLang %></h4>
	<ul>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
	</ul>
	<hr>
	<a href="PersonalizeCookiesForm.html">Personalize this page</a>
</body>
</html>