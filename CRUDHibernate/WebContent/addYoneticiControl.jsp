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
<jsp:useBean id="yonetici" class="dao.Yonetici" scope="session" ></jsp:useBean>
<jsp:setProperty property="*" name="yonetici"/>
<jsp:useBean id="butunislemler" class="islemler.ButunIslemler"></jsp:useBean>
<jsp:useBean id="yoneticiDao" class="dao.YoneticiDao"></jsp:useBean>
<html>
<head>
</head>
<body>
<div id="main">
    <%   Date nowDate = new Date();
    SimpleDateFormat ft = new SimpleDateFormat ("ddMMuyyyy hh:mm:ss");
    String tarih=butunislemler.tarihCevir(ft.format(nowDate));
    yonetici.setSistemegiris(tarih);
    
    int i=yoneticiDao.register(yonetici);
    if(i>0)
         {response.sendRedirect("addYonetici.jsp");
         session.setAttribute("newUser", "success");
         session.setMaxInactiveInterval(5);}
    else
    	{response.sendRedirect("addYonetici.jsp");
    	session.setAttribute("newUser", "unsuccess");
    	session.setMaxInactiveInterval(5);}
    %>
</div>
</body>
</html>