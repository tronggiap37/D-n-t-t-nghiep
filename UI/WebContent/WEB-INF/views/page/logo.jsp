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
<link
	href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<base href="${pageContext.servletContext.contextPath}/">

<link rel="stylesheet" type="text/css"
	href='<c:url value="/stylesheet/style.css"/>'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/stylesheet/magnific-popup.css"/>'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/stylesheet/nice-select.css"/>'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/stylesheet/owl.carousel.min.css"/>'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/stylesheet/slicknav.min.css"/>'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/stylesheet/font-awesome.min.css"/>'>
<jsp:include page="header.jsp" />
</head>
<style type="text/css">
body {
	background-image: url(../img/nen.png);
}
input[type=submit]{
  margin-left: 0.5em;
  height: 2.5em;
  padding: 0.2em 1em 0.2em 2.25em;
  font-size: 1.2em;
  font-weight: bold;
  font-family: "Open Sans";
  text-transform: uppercase;
  color: #696666;
  background: url(https://i.imgur.com/Th606mh.png) no-repeat scroll 0.75em 0.07em transparent;
  background-size: 54px 204px;
  border-radius: 2em;
  border: 0.15em solid #F9C23C;
  cursor: pointer;
  transition: all 0.3s ease 0s;
}
input[type="submit"]:hover {
    color: #fff;
    background-color: #EAA502;
    border-color: #EAA502;
    background-position: 0.75em bottom;
    -webkit-transition: all 0.3s ease;
    -ms-transition: all 0.3s ease;
    transition: all 0.3s ease;
}
input[type="submit"]:focus {
    background-position: 2em -4em;
    -webkit-transition: all 0.3s ease;
    -ms-transition: all 0.3s ease;
    transition: all 0.3s ease;
}
/* Webfonts */

@font-face {
    font-family: 'Open Sans';
    font-style: normal;
    font-weight: 700;
    src: local('Open Sans Bold'), local('OpenSans-Bold'), url(https://themes.googleusercontent.com/static/fonts/opensans/v8/k3k702ZOKiLJc3WVjuplzHhCUOGz7vYGh680lGh-uXM.woff) format('woff');
}
</style>


<section class="latest-products spad">
	<div class="container">
		<div class="product-filter">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="section-title">
						<h2>Logo Design</h2>
					</div>
					<ul class="product-controls">
						<!-- <li data-filter="*"></li> -->
						<!-- <li data-filter=".bags">Bags</li> -->
						<!-- <li data-filter=".shoes">Shoes</li> -->
					</ul>
				</div>
			</div>
		</div>

		<div class="row" id="product-list">
			<c:forEach var="m" items="${logos}">
				<div class="col-lg-3 col-sm-6 mix all dresses bags">
					<div class="single-product-item">
						<figure>
							<a href="#"><img src="img/logo/${m.anh} "></a>
							<div class="p-status">HOT</div>
						</figure>
						<p style="text-align: center" ="font-weight-bold">${m.gia}</p>

						<form>
							<input value="Thêm vào giỏ" type="submit" />
						</form>
					</div>
				</div>
			</c:forEach>
		</div>

	</div>
</section>



</body>
<%--  <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/main.js"></script> --%>
<jsp:include page="footer.jsp" />
</html>