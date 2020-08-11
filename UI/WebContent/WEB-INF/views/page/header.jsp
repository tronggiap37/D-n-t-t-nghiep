<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Yoga Studio Template">
    <meta name="keywords" content="Yoga, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Best Quotes Shop</title>
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<base href="${pageContext.servletContext.contextPath}/">

    <link rel="stylesheet" type="text/css" href='<c:url value="/stylesheet/style.css"/>'>
    <link rel="stylesheet" type="text/css" href='<c:url value="/stylesheet/magnific-popup.css"/>'>
    <link rel="stylesheet" type="text/css" href='<c:url value="/stylesheet/nice-select.css"/>'>
    <link rel="stylesheet" type="text/css" href='<c:url value="/stylesheet/owl.carousel.min.css"/>'>
    <link rel="stylesheet" type="text/css" href='<c:url value="/stylesheet/slicknav.min.css"/>'>
      <link rel="stylesheet" type="text/css" href='<c:url value="/stylesheet/font-awesome.min.css"/>'>
</head>

<body style="background-image: ">


<!-- Search model -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search model end -->

    <!-- Header Section Begin -->
    <header class="header-section">
        <div class="container-fluid">
            <div class="inner-header">
                <div class="logo">
                    <a href="./page/index.htm"><img src="img/logo2.jpg" width="150px" height="80px"></a>
                    <h2 style="font-family:monospace;font-size: 26px; color: graytext; ">Shop online</h2>
                </div>
                <div class="header-right">
                    <img src="img/icons/search.png" alt="" class="search-trigger">
                    <img src="img/icons/man.png" alt="">
                    <a href="page/shoppingcart.htm">
                        <img src="img/icons/bag.png" alt="">
                        
                    </a>
                </div>
                <div class="user-access">
                    <a href="khachhang/insert.htm">Đăng Ký</a>
                    <a href="khachhang/login.htm" class="in">Đăng nhập</a>
                </div>
                <nav class="main-menu mobile-menu">
                    <ul>
                        <li><a href="page/index.htm">Trang chủ</a></li>
                        <li><a href="page/product.htm">Sản phẩm</a>
                            <ul class="sub-menu">                     
                                <li><a href="page/product.htm">T-Shirts</a></li>
                        		<li><a href="page/logo.htm">Thiết kế Logo</a></li>
                            </ul>
                        </li>       
                        <!-- <li><a href="page/product.htm">Shop</a>
                            <ul class="sub-menu">                     
                                <li><a href="page/detail.htm">Product Detail</a></li>
                                <li><a href="page/shoppingcart.htm">Shopping Card</a></li>
                                <li><a href="page/checkout.htm">Check out</a></li>
                            </ul>
                        </li> -->
                        <li><a href="page/blog.htm">Mua sắm</a></li>
                        <li><a href="page/contact.htm">Liên hệ</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>
    <br>
    <br>
    <!-- Header Info Begin -->
    <div class="header-info">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <div class="header-item">
                        <img src="img/icons/delivery.png" alt="">
                        <p>Giảm 10% cho đơn hàng 1 triệu đồng</p>
                    </div>
                </div>
                <div class="col-md-4 text-left text-lg-center">
                    <div class="header-item">
                        <img src="img/icons/voucher.png" alt="">
                        <p>Giảm giá 20% cho học sinh, sinh viên</p>
                    </div>
                </div>
                <div class="col-md-4 text-left text-xl-right">
                    <div class="header-item">
                    <img src="img/icons/sales.png" alt="">
                    <p>Freeship- sử dụng mã code: "Frees0"</p>
                </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Header Info End -->



</body>
    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/main.js"></script>
</html>