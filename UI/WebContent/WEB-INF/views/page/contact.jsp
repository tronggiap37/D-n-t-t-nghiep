<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Yoga Studio Template">
    <meta name="keywords" content="Yoga, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Violet | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900&display=swap"
        rel="stylesheet">

    <!-- Css Styles -->
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

    <section class="page-add">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="page-breadcrumb">
                        <h2>Liên hệ với chúng tôi<span>.</span></h2>
                    </div>
                </div>
                <div class="col-lg-8">
                    <img src="img/add.jpg" alt="">
                </div>
            </div>
        </div>
    </section>
    <!-- Page Add Section End -->

    <!-- Contact Section Begin -->
    <div class="contact-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <form action="#" class="contact-form">
                        <div class="row">
                            <div class="col-lg-6">
                                <input type="text" placeholder="Họ đệm">
                            </div>
                            <div class="col-lg-6">
                                <input type="text" placeholder="Tên">
                            </div>
                            <div class="col-lg-12">
                                <input type="email" placeholder="E-mail">
                                <input type="text" placeholder="Tiêu đề">
                                <textarea placeholder="Nội dung"></textarea>
                            </div>
                            <div class="col-lg-12 text-right">
                                <button type="submit">Gửi tin nhắn</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-lg-3 offset-lg-1">
                    <div class="contact-widget">
                        <div class="cw-item">
                            <h5>Location</h5>
                            <ul>
                                <li>51 Chùa Bộc</li>
                                <li>Quận Đống Đa, Hà Nội</li>
                            </ul>
                        </div>
                        <div class="cw-item">
                            <h5>Điện thoại</h5>
                            <ul>
                                <li>(+84) 377494067 </li>
                                <li>(+84) 999999998</li>
                            </ul>
                        </div>
                        <div class="cw-item">
                            <h5>E-mail</h5>
                            <ul>
                                <li>Caokid@gmail.com</li>
                                <li>www.aophongbestquotes.com</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<jsp:include page="footer.jsp" />
</html>