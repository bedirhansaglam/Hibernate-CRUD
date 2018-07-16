<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.Iterator" %>
<%@page import="dao.Yonetici" %>
    <!DOCTYPE html>
<html>
<head>
<link href="css/Table.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/Table.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/Form.css" rel="stylesheet" type="text/css">
</head>
<body>
<jsp:include page="leftMenu.jsp"></jsp:include>
<jsp:useBean id="yoneticiDao" class="dao.YoneticiDao"></jsp:useBean>
<jsp:useBean id="yonetici" class="dao.Yonetici"></jsp:useBean>

<div id="main">
<%if(request.getParameter("silindimi")!=null)
	{%><div class="alert-success">
	  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
	  Yönetici baþarýyla silindi
	  </div><%}%>
<%if(request.getParameter("guncellendi")!=null)
	{%><div class="alert-success">
	  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
	  Yönetici baþarýyla Güncellendi
	  </div><%}%>
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="isim ara..."/>

<table id="myTable">
  <tr class="header">
    <th style="width:20%;">Ad</th>
    <th style="width:20%;">Soyad</th>
    <th style="width:20%;">Email</th>
    <th style="width:20%;">Þifre</th>
    <th style="width:10%;">Güncelle</th>
    <th style="width:10%;">Sil</th>
  </tr>
  <% Iterator iterator = yoneticiDao.getAllData().iterator();
  while(iterator.hasNext()){ yonetici=(Yonetici)iterator.next(); %>
  <tr>
    <td><%=yonetici.getAd() %></td>
    <td><%=yonetici.getSoyad() %></td>
    <td><%=yonetici.getEmail() %></td>
    <td><%=yonetici.getSifre() %></td>
    <td><a href='updateYonetici.jsp?id=<%=yonetici.getAdminID()%>'><span class="glyphicon glyphicon-edit" style="font-size:24px; color:green;"></span></a></td>
    <td><a href='deleteYoneticiControl.jsp?id=<%=yonetici.getAdminID()%>'><span class="glyphicon glyphicon-remove" style="font-size:24px; color:red;"></span></a></td>
  </tr>
  <%} %>
</table>
</div>
</body>
</html>