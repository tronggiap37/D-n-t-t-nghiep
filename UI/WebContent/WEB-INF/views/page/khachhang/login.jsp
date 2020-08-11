<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html lang="xyz">
<head>
	<title>Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords"
		content="Trendz Login Form Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
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
						<div class="main-bg">
							<h6 class="sec-one">Best Quotes</h6>
							<div class="speci-login first-look">
								<img src="img/user.png" alt="" class="img-responsive">
							</div>
						</div>
						<div class="bottom-content">
							<form action="khachhang/login.htm" method="post">
								<input  name="tendnkh" class="input-form" placeholder="Tên đăng nhập"
										required="required" />
								<input type="password" name="matkhau" class="input-form"
										placeholder="Mật khẩu" required="required" />
								<button type="submit" class="loginhny-btn btn">Đăng nhập</button>
							</form>
							<p>Bạn chưa có tài khoản? <a href="khachhang/insert.htm">Đăng ký ngay</a></p>
						</div>
					</div>
				</div>
				<div class="w3l-copy-right text-center">
					<p>© 2020 Trendz Login Form. All rights reserved | Design by
						<a href="#" target="_blank">Fashion Men's</a></p>
				</div>
			</div>
		</div>
	</section>
</body>
</html>