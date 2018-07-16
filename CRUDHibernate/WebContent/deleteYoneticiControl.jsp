<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
<%@ page import="java.util.Date" %>
<%
request.setCharacterEncoding("ISO-8859-9");
%>
<!DOCTYPE html>
<jsp:useBean id="yoneticiDao" class="dao.YoneticiDao"></jsp:useBean>
<html>
<head>
</head>
<body>
<div id="main">
    <%   if(yoneticiDao.deleteYonetici(Integer.parseInt(request.getParameter("id"))))
    {
    	response.sendRedirect("readYonetici.jsp?silindimi=1");
    }
    %>
</div>
</body>
</html>