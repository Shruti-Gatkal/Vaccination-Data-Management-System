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
String roll_no=request.getParameter("roll");
String email=request.getParameter("email");
String name=request.getParameter("name");
String class_=request.getParameter("class_");
String f_dose=request.getParameter("f_dose");
Date f_date=request.getParameter("f_date");
//String f_certificate=request.getParameter("f_file");
String s_dose=request.getParameter("s_dose");
Date s_date=request.getParameter("s_date"); 
//String s_certificate=request.getParameter("s_file");


Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vaccination","root","root@123");
Statement st= con.createStatement();
int i=st.executeUpdate("insert into student_data values ('"+roll_no+"','"+email+"','"+name+"','"+class_+"','"+f_dose+"','"+f_date+"','"+f_certificate+"','"+s_dose+"','"+s_date+"','"+s_certificate+"')");
response.sendRedirect("index.html");
//out.println("<h1>Congratulation!!!<h1><br/>");


%>
</body>
</html>
