<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Entry</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.io.*" %>
<%

String delete_param=request.getParameter("delete_param");
String delete_value=request.getParameter("delete_value");


Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vaccination","root","root@123");
Statement st= con.createStatement();
int i=st.executeUpdate("(delete from student_data where delete_param=delete_value)");
response.sendRedirect("index.html");
out.println("<h1>Record Deleted Successfully!!!<h1><br/>");


%>
</body>
</html>
