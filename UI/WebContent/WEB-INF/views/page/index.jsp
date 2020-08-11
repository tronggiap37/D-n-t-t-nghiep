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
      <jsp:include page="header.jsp" />
</head>

<body>
    <!-- Page Preloder -->
    <!-- <div id="preloder"> -->
        <!-- <div class="loader"></div> -->
    <!-- </div> -->
    
    <!-- Search model -->
	<%-- <div class="search-model">
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
                    <a href="./index.html"><img src="img/logo.png" alt=""></a>
                </div>
                <div class="header-right">
                    <img src="img/icons/search.png" alt="" class="search-trigger">
                    <img src="img/icons/man.png" alt="">
                    <a href="#">
                        <img src="img/icons/bag.png" alt="">
                        
                    </a>
                </div>
                <div class="user-access">
                    <a href="#">Register</a>
                    <a href="#" class="in">Sign in</a>
                </div>
                <nav class="main-menu mobile-menu">
                    <ul>
                        <li><a class="active" href="page/index.htm">Home</a></li>
                        <li><a href="page/product.htm">Shop</a>
                            <ul class="sub-menu">
                                <li><a href="page/product.htm">Product Page</a></li>
                                <li><a href="shopping-cart.html">Shopping Card</a></li>
                                <li><a href="check-out.html">Check out</a></li>
                            </ul>
                        </li>
                        <li><a href="./product-page.html">About</a></li>
                        <li><a href="./check-out.html">Blog</a></li>
                        <li><a href="./contact.html">Contact</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <!-- Header Info Begin -->
    <div class="header-info">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <div class="header-item">
                        <img src="img/icons/delivery.png" alt="">
                        <p>Free shipping on orders over $30 in USA</p>
                    </div>
                </div>
                <div class="col-md-4 text-left text-lg-center">
                    <div class="header-item">
                        <img src="img/icons/voucher.png" alt="">
                        <p>20% Student Discount</p>
                    </div>
                </div>
                <div class="col-md-4 text-left text-xl-right">
                    <div class="header-item">
                    <img src="img/icons/sales.png" alt="">
                    <p>30% off on dresses. Use code: 30OFF</p>
                </div>
                </div>
            </div>
        </div>
    </div> --%>
    <!-- Header Info End -->
    <!-- Hero Slider Begin -->
    <section class="hero-slider">
        <div class="hero-items owl-carousel">
            <div class="single-slider-item set-bg" data-setbg="img/img5.gif">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1>2020</h1>
                            <h2>Men's Fashion</h2>
                            <a href="page/index.htm" class="primary-btn">See More</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- <div class="single-slider-item set-bg" data-setbg="img/slider-2.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1>2019</h1>
                            <h2>Lookbook.</h2>
                            <a href="#" class="primary-btn">See More</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single-slider-item set-bg" data-setbg="img/slider-3.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1>2019</h1>
                            <h2>Lookbook.</h2>
                            <a href="#" class="primary-btn">See More</a>
                        </div>
                    </div>
                </div>
            </div>  -->
        </div>
    </section>
    <!-- Header End -->

    
    <!-- Hero Slider End -->

	<!-- Latest Product Begin -->
   <section class="latest-products spad">
        <div class="container">
            <div class="product-filter">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="section-title">
                            <h2>Sản phẩm mới</h2>
                        </div>
                        <!-- <ul class="product-controls">
                            <li data-filter="*">T-Shirt</li>
                            <li data-filter=".bags">Bags</li>
                            <li data-filter=".shoes">Shoes</li>
                        </ul> -->
                    </div>
                </div>
            </div>
            
            <div class="row" id="product-list">
            	<c:forEach var="n" items="${sanphammoi}">
                <div class="col-lg-3 col-sm-6 mix all dresses bags">
                    <div class="single-product-item">
                        <figure>
                            <a href="#"><img src="img/new-product/${n.anh} "></a>
                            <div class="p-status">New</div>
                        </figure>
                        <div class="product-text">
                            <h6>${n.tenspm}</h6>
                          <%--   <p>${n.dongia}</p> --%>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>          
        </div>
    </section>
    <!-- Latest Product End -->
	

    <!-- Features Section Begin -->
    <section class="features-section spad">
        <div class="features-ads">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="single-features-ads first">
                            <img src="img/icons/f-delivery.png" alt="">
                            <h4>Miễn phí ship</h4>
                            <p>Miễn phí ship cho đơn hàng đặt trong tuần đầu khai trương trong khu vực Hà Nội </p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-features-ads second">
                            <img src="img/icons/coin.png" alt="">
                            <h4>Hoàn 100% tiền đơn hàng </h4>
                            <p>Urna quam, euismod sit amet mollis quis, vestibulum quis velit. Vesti bulum mal esuada
                                aliquet libero viverra cursus. </p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-features-ads">
                            <img src="img/icons/chat.png" alt="">
                            <h4>Online support 24/7</h4>
                            <p>Urna quam, euismod sit amet mollis quis, vestibulum quis velit. Vesti bulum mal esuada
                                aliquet libero viverra cursus. </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
        
        <!-- Features Box -->
        <div class="features-box">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="single-box-item first-box">
                                    <img src="img/f1.jpg" alt="" height="400px" width="100px">
                                    <div class="box-text">
                                        <span class="trend-year">2020 Party</span>
                                        <h2>Jewelry</h2>
                                        <span class="trend-alert">Trend Allert</span>
                                        <a href="#" class="primary-btn">See More</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="single-box-item second-box">
                                    <img src="img/f2.jpg" alt="" height="400px">
                                    <div class="box-text">
                                        <span class="trend-year">2020 Trend</span>
                                        <h2>Footwear</h2>
                                        <span class="trend-alert">Bold & Black</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="single-box-item large-box">
                            <img src="img/collection2.jpg" alt="" height="600px">
                            <div class="box-text">
                                <span class="trend-year">2020 Party</span>
                                <h2>Collection</h2>
                                <div class="trend-alert">Trend Allert</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Features Section End -->

    

    <!-- Lookbok Section Begin -->
    <section class="lookbok-section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-4 offset-lg-1">
                    <div class="lookbok-left">
                        <div class="section-title">
                            <h2>2020 <br />Fashion Men</h2>
                        </div>
                        <p>Fusce urna quam, euismod sit amet mollis quis, vestibulum quis velit. Vestibulum malesuada
                            aliquet libero viverra cursus. Aliquam erat volutpat. Morbi id dictum quam, ut commodo
                            lorem. In at nisi nec arcu porttitor aliquet vitae at dui. Sed sollicitudin nulla non leo
                            viverra scelerisque. Phasellus facilisis lobortis metus, sit amet viverra lectus finibus ac.
                            Aenean non felis dapibus, placerat libero auctor, ornare ante. Morbi quis ex eleifend,
                            sodales nulla vitae, scelerisque ante. Nunc id vulputate dui. Suspendisse consectetur rutrum
                            metus nec scelerisque. s</p>
                        <a href="#" class="primary-btn look-btn">See More</a>
                    </div>
                </div>
                <div class="col-lg-5 offset-lg-1">
                    <div class="lookbok-pic">
                        <img src="img/f3.jpg" alt="">
                        <div class="pic-text">fashion</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
     <hr>
	<h1 style="text-align: center; font-family: monospace;"><strong>Your Logo</strong></h1>
	<br>
    <!-- Logo Section Begin -->
    <div class="">
        <div class="logo-items owl-carousel">
            <div class="logo-item">
                <img src="img/logo/logo1.jpg" alt="">
            </div>
            <div class="logo-item">
                <img src="img/logo/logo2.jpg" alt="">
            </div>
            <div class="logo-item">
                <img src="img/logo/logo3.jpg" alt="">
            </div>
            <div class="logo-item">
                <img src="img/logo/logo4.jpg" alt="">
            </div>
            <div class="logo-item">
                <img src="img/logo/logo5.jpg" alt="">
            </div>
        </div>
    </div>
     <div class="logo-section spad">
        <div class="logo-items owl-carousel">
            <div class="logo-item">
                <img src="img/logo/logo6.jpg" alt="">
            </div>
            <div class="logo-item">
                <img src="img/logo/logo7.jpg" alt="">
            </div>
            <div class="logo-item">
                <img src="img/logo/logo8.jpg" alt="">
            </div>
            <div class="logo-item">
                <img src="img/logo/logo1.jpg" alt="">
            </div>
            <div class="logo-item">
                <img src="img/logo/logo2.jpg" alt="">
            </div>
        </div>
    </div>
     
  <div style="text-align: center">
   <button type="button" onclick="location.href='page/logo.htm';" class="btn btn-secondary">Xem Thêm</button>
  </div>
  <hr>

   
</body>
    <!-- Js Plugins -->
<%--     <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/main.js"></script> --%>
   
    <jsp:include page="footer.jsp" />
</html>