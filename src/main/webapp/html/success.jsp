<%@ page import="java.io.FileWriter" %>
<%@ page import="java.io.OutputStreamWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% if ((request.getParameter("username")!="")&&(request.getParameter("password")!="")){%>
<div>Success!!</div>
<%
    FileWriter fileWriter = new FileWriter("C:/data.txt");
    fileWriter.write(request.getParameter("username")+" "+request.getParameter("password"));
    fileWriter.close();
%>
<% } else { %>
<meta http-equiv="refresh" content="0; url=my-registration.jsp" />
<% } %>
</body>
</html>
