<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>Hello World Example</title>
</head>
<body>

	<!-- Writing a scriptlet -->
	<%
		String addr =request.getLocalAddr();
		String browser = "unknown";
		String userAgent =request.getHeader("User-Agent");
			out.println("Hello World!!");
			out.println("<br/>");
			
			out.println("Your IP address is "+addr);
			out.println("<br/>");
			
			if(userAgent.indexOf("MSIE") > -1){
		browser ="MS Internet Explorer";
			}else if(userAgent.indexOf("Chrome") > -1){
		browser ="Google Chrome";
			}else if(userAgent.indexOf("Opera") > -1){
		browser ="Opera";
			}else if(userAgent.indexOf("Firefox") > -1){
		browser ="Mozilla Firefox";
			}else if(userAgent.indexOf("Safari") > -1){
		browser ="Apple Safari";
			}		
			out.println("you browser is "+ browser);
	%>


</body>
</html>