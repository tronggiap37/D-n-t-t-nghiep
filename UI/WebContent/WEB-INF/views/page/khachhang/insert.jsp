<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html lang="xyz">
<head>
<meta charset="UTF-8">
<title>Fashion Men's</title>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/stylesheet/login.css"/>'>
<base href="${pageContext.servletContext.contextPath}/">
</head>
<body>
		<section class="w3l-forms-23">
		<div class="forms23-block-hny">
			<div class="wrapper">
				<div class="d-grid forms23-grids">
					<div class="form23">
						<div class="bottom-content">
							<form:form action="khachhang/insert.htm" modelAttribute="khachhang">
								<form:input  path="tendnkh" class="input-form"
										placeholder="Tên đăng nhập" required="required" />
								<form:input  path="tenkh" class="input-form"
										placeholder="Tên khách hàng" required="required" />
								<form:input type="number" path="sdt" class="input-form"
										placeholder="Số điện thoại" required="required" />
								<form:input  path="diachi" class="input-form"
										placeholder="Địa chỉ" required="required" />
								<form:input  type="password" path="matkhau" class="input-form"
										placeholder="Mật khẩu" required="required" />
								<form:input type="email"  path="email" class="input-form"
										placeholder="Email" required="required" />
								<button type="submit" class="loginhny-btn btn">Đăng ký</button>
							</form:form>
						</div>
						</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>