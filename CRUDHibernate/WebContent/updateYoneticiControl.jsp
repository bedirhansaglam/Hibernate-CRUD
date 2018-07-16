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
<jsp:useBean id="yonetici" class="dao.Yonetici"></jsp:useBean>
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
    yonetici.setAdminID(Integer.parseInt(request.getParameter("id")));
    if(yoneticiDao.updateYonetici(yonetici))
         response.sendRedirect("readYonetici.jsp?guncellendi=1");

    %>
</div>
</body>
</html>