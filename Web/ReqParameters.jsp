<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%
	Map<String,String[]> map = request.getParameterMap();
	Object[] keys = map.keySet().toArray();
%>
<html>
<head>
<title>Request Parameters Example</title>
</head>
<body>
	<p>Map size =<%=map.size()%></p>
	<table border="1">
		<tr>
			<th>Map element</th>
			<th>param</th>
			<th>value</th>
		</tr>
		<%
			for (int i = 0; i < keys.length; i++) {
				String[] params = request.getParameterValues((String) keys[i]);
				out.println("<tr><td>" + i + "</td><td>" + keys[i]
						+ "</td><td>");
				for (int k = 0; k < params.length; k++) {
					if (k > 0)
						out.println(", ");
					out.println(" ' " + params[k] + " ' ");
				}
				out.println("</td></tr>");
			}
		%>

	</table>
</body>
</html>