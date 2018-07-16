<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.Yonetici" %>
<%
request.setCharacterEncoding("ISO-8859-9");
%>
    <!DOCTYPE html>
<html>
<head>
<link href="css/Form.css" rel="stylesheet" type="text/css">
</head>
<body>
<jsp:include page="leftMenu.jsp"></jsp:include>
<jsp:useBean id="yoneticiDao" class="dao.YoneticiDao"></jsp:useBean>
<jsp:useBean id="yonetici" class="dao.Yonetici"></jsp:useBean>
<% yonetici=yoneticiDao.getYonetici(Integer.parseInt(request.getParameter("id")));%>
<div id="main">
<div class="container">
  <form action="updateYoneticiControl.jsp?id=<%=Integer.parseInt(request.getParameter("id"))%>" method="post">
    <div class="row">
      <div class="col-25">
        <label for="fname">Güncellenecek Ýsim</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="ad" value='<%=yonetici.getAd()%>' placeholder="Yönetici Adý">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Güncellenecek Soyisim</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="soyad" value='<%=yonetici.getSoyad()%>' placeholder="Yönetici Soyadý">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="email">Güncellenecek E-mail</label>
      </div>
      <div class="col-75">
		<input type="text" id="email" name="email" value='<%=yonetici.getEmail()%>' placeholder="Yönetici E mail">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="pword">Güncellenecek Þifre</label>
      </div>
      <div class="col-75">
        <input type="password" id="pword" name="sifre" value='<%=yonetici.getSifre()%>' placeholder="Yönetici Þifresi">
      </div>
    </div>
    <div class="row">
      <input type="submit" value="GÜNCELLE">
    </div>
  </form>
</div>
</div>
</body>
</html>