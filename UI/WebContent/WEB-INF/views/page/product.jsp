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
background: url(http://subtlepatterns.com/patterns/project_papper.png);
}
.button {
	font-family: 'Droid Sans', sans-serif;
	-webkit-border-radius: 25px;
	-moz-border-radius: 25px;
	border-radius: 25px;
	margin: 40px;
	border: 1px solid rgba(0,0,0,0.4) ;
	box-shadow: inset 0 1px 0 0 rgba(255,255,255,0.5),
				0 0 1px 1px rgba(255,255,255,0.8),
				0 0 0 6px rgba(0,0,0,0.06),
				0 0 0 3px rgba(0,0,0,0.1);
	cursor: pointer;
}
.title {
	padding: 10px;
	float: left;
	color: #fff;
	font-weight: 800;
	font-size: 12px;
	text-shadow: 1px 1px rgba(0,0,0,0.2);
	text-transform: uppercase;
	border-right: 1px solid rgba(255,255,255,0.3);
}
.price {
	padding: 10px;
	float: left;
	color: rgba(0,0,0,0.4);
	font-weight: 800;
	font-size: 12px;
	text-shadow: 1px 1px rgba(255,255,255,0.3);
	text-transform: uppercase;	
	border-left: 1px solid rgba(0,0,0,0.2);
}

/* colors */
.yellow {
	background: rgb(255,214,94);
	background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIwJSIgeTI9IjEwMCUiPgogICAgPHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iI2ZmZDY1ZSIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjEwMCUiIHN0b3AtY29sb3I9IiNmZWJmMDQiIHN0b3Atb3BhY2l0eT0iMSIvPgogIDwvbGluZWFyR3JhZGllbnQ+CiAgPHJlY3QgeD0iMCIgeT0iMCIgd2lkdGg9IjEiIGhlaWdodD0iMSIgZmlsbD0idXJsKCNncmFkLXVjZ2ctZ2VuZXJhdGVkKSIgLz4KPC9zdmc+);
	background: -moz-linear-gradient(top,  rgba(255,214,94,1) 0%, rgba(254,191,4,1) 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(255,214,94,1)), color-stop(100%,rgba(254,191,4,1)));
	background: -webkit-linear-gradient(top,  rgba(255,214,94,1) 0%,rgba(254,191,4,1) 100%);
	background: -o-linear-gradient(top,  rgba(255,214,94,1) 0%,rgba(254,191,4,1) 100%);
	background: -ms-linear-gradient(top,  rgba(255,214,94,1) 0%,rgba(254,191,4,1) 100%);
	background: linear-gradient(top,  rgba(255,214,94,1) 0%,rgba(254,191,4,1) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffd65e', endColorstr='#febf04',GradientType=0 );
}

.yellow:hover {
	background: rgb(254,191,4);
	background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIwJSIgeTI9IjEwMCUiPgogICAgPHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iI2ZlYmYwNCIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjEwMCUiIHN0b3AtY29sb3I9IiNmZmQ2NWUiIHN0b3Atb3BhY2l0eT0iMSIvPgogIDwvbGluZWFyR3JhZGllbnQ+CiAgPHJlY3QgeD0iMCIgeT0iMCIgd2lkdGg9IjEiIGhlaWdodD0iMSIgZmlsbD0idXJsKCNncmFkLXVjZ2ctZ2VuZXJhdGVkKSIgLz4KPC9zdmc+);
	background: -moz-linear-gradient(top,  rgba(254,191,4,1) 0%, rgba(255,214,94,1) 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(254,191,4,1)), color-stop(100%,rgba(255,214,94,1)));
	background: -webkit-linear-gradient(top,  rgba(254,191,4,1) 0%,rgba(255,214,94,1) 100%);
	background: -o-linear-gradient(top,  rgba(254,191,4,1) 0%,rgba(255,214,94,1) 100%);
	background: -ms-linear-gradient(top,  rgba(254,191,4,1) 0%,rgba(255,214,94,1) 100%);
	background: linear-gradient(top,  rgba(254,191,4,1) 0%,rgba(255,214,94,1) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#febf04', endColorstr='#ffd65e',GradientType=0 );
}

.green {
	background: rgb(143,200,0);
	background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIwJSIgeTI9IjEwMCUiPgogICAgPHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iIzhmYzgwMCIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjEwMCUiIHN0b3AtY29sb3I9IiM2NjhlMDAiIHN0b3Atb3BhY2l0eT0iMSIvPgogIDwvbGluZWFyR3JhZGllbnQ+CiAgPHJlY3QgeD0iMCIgeT0iMCIgd2lkdGg9IjEiIGhlaWdodD0iMSIgZmlsbD0idXJsKCNncmFkLXVjZ2ctZ2VuZXJhdGVkKSIgLz4KPC9zdmc+);
	background: -moz-linear-gradient(top,  rgba(143,200,0,1) 0%, rgba(102,142,0,1) 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(143,200,0,1)), color-stop(100%,rgba(102,142,0,1)));
	background: -webkit-linear-gradient(top,  rgba(143,200,0,1) 0%,rgba(102,142,0,1) 100%);
	background: -o-linear-gradient(top,  rgba(143,200,0,1) 0%,rgba(102,142,0,1) 100%);
	background: -ms-linear-gradient(top,  rgba(143,200,0,1) 0%,rgba(102,142,0,1) 100%);
	background: linear-gradient(top,  rgba(143,200,0,1) 0%,rgba(102,142,0,1) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#8fc800', endColorstr='#668e00',GradientType=0 );
}
.green:hover {
	background: rgb(102,142,0);
	background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIwJSIgeTI9IjEwMCUiPgogICAgPHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iIzY2OGUwMCIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjEwMCUiIHN0b3AtY29sb3I9IiM4ZmM4MDAiIHN0b3Atb3BhY2l0eT0iMSIvPgogIDwvbGluZWFyR3JhZGllbnQ+CiAgPHJlY3QgeD0iMCIgeT0iMCIgd2lkdGg9IjEiIGhlaWdodD0iMSIgZmlsbD0idXJsKCNncmFkLXVjZ2ctZ2VuZXJhdGVkKSIgLz4KPC9zdmc+);
	background: -moz-linear-gradient(top,  rgba(102,142,0,1) 0%, rgba(143,200,0,1) 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(102,142,0,1)), color-stop(100%,rgba(143,200,0,1)));
	background: -webkit-linear-gradient(top,  rgba(102,142,0,1) 0%,rgba(143,200,0,1) 100%);
	background: -o-linear-gradient(top,  rgba(102,142,0,1) 0%,rgba(143,200,0,1) 100%);
	background: -ms-linear-gradient(top,  rgba(102,142,0,1) 0%,rgba(143,200,0,1) 100%);
	background: linear-gradient(top,  rgba(102,142,0,1) 0%,rgba(143,200,0,1) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#668e00', endColorstr='#8fc800',GradientType=0 );
}
</style>
	<!-- Latest Product Begin -->
	<section class="latest-products spad">
		<div class="container">
			<div class="product-filter">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2>All Products</h2>
						</div>
						<ul class="product-controls">
							<li data-filter="*">T-Shirt</li>
							<!-- <li data-filter=".bags">Bags</li> -->
							<!-- <li data-filter=".shoes">Shoes</li> -->
						</ul>
					</div>
				</div>
			</div>

			<div class="row" id="product-list">
				<c:forEach var="n" items="${sanphams}">
					<div class="col-lg-3 col-sm-6 mix all dresses bags">
						<div class="single-product-item">
							<figure>
								<a href="#"><img src="img/products/${n.anh} "></a>
								<div class="p-status">- 10%</div>
							</figure>
							<div class="product-text">
								<h6>${n.tensp}</h6>
								<p>${n.dongia}</p>
							</div>
							<button class="button yellow">
								<div class="title">Thêm vào giỏ</div>
								<div class="price">$$</div>
							</button>
						</div>
					</div>
				</c:forEach>
			</div>

		</div>
	</section>
	<!-- Latest Product End -->

</body>
<jsp:include page="footer.jsp" />
</html>