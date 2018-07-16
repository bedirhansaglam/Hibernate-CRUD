<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/LeftMenuCss.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/LeftMenu.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
<body>
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="addYonetici.jsp">Yönetici Ekle</a>
  <a href="readYonetici.jsp">Yönetici Sil / Güncelle</a>
</div>
<!-- Use any element to open the sidenav -->
<span onclick="openNav()"><i class="material-icons" style="font-size:36px">toc</i></span>

</body>
</html>