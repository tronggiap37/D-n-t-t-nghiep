<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13th October</title>
<base href="${pageContext.servletContext.contextPath}/">
<style>
	table{
       border-collapse: collapse;
       width: 100%;   
       }   
       th, td{
           line-height: 25px;    
           border: 1px solid black;    
           padding: 5px;   
           }
       th{
           background-color: gray;
           }
</style>
</head>

<body style="align-content: center">
	<table> 
	<tr>
	  <th>Tên DNKH</th>  
	  <th>Tên KH</th>
	  <th>SĐT</th>   
	  <th>Địa chỉ</th>   
	  <th>Password</th>  
	  <th>Email</th>  
	</tr>
	<c:forEach var="u" items="${users}"> 
	<tr>
	  <td>${u.tendnkh}</td>
	  <td>${u.tenkh}</td>
	  <td>${u.sdt}</td> 
	  <td>${u.diachi}</td>
	  <td>${u.matkhau}</td>
	  <td>${u.email}</td> 
	</tr> 
	</c:forEach> 
	</table>

</body>

</html>