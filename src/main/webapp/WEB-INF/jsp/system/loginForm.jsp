<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>

	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="SemiColonWeb" />

	<!-- Stylesheets
	============================================= -->
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,400i,700|Poppins:300,400,500,600,700|PT+Serif:400,400i&display=swap" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="/css/bootstrap.css" type="text/css" />
	<link rel="stylesheet" href="/style.css" type="text/css" />
	<link rel="stylesheet" href="/css/dark.css" type="text/css" />
	<link rel="stylesheet" href="/css/font-icons.css" type="text/css" />
	<link rel="stylesheet" href="/css/animate.css" type="text/css" />
	<link rel="stylesheet" href="/css/magnific-popup.css" type="text/css" />

	<link rel="stylesheet" href="/css/custom.css" type="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />

	<!-- Document Title
	============================================= -->
	<title>Login - Layout 4 | RGAS</title>

</head>

<body class="stretched">

	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">

		<!-- Content
		============================================= -->
		<section id="content">
			<div class="content-wrap py-0">

				<div class="section p-0 m-0 h-100 position-absolute" style="background: url('/images/parallax/home/1.jpg') center center no-repeat; background-size: cover;"></div>
				<div class="section bg-transparent min-vh-100 p-0 m-0 d-flex">
					<div class="vertical-middle">
						<div class="container py-5">
							<div class="text-center">
								<a href="/login"><img src="images/logo.png" alt="Rgas Logo" style="height: 200px;"></a>
							</div>
							<div class="card mx-auto rounded-0 border-0" style="max-width: 400px;">
								<div class="card-body" style="padding: 40px;">
									<form id="login-form" name="login-form" class="mb-0" action="/login" method="post">
										<h3>Login to your Account</h3>

										<div class="row">
											<div class="col-12 form-group">
												<label for="login-form-username">Email:</label>
												<input type="text" id="login-form-username" name="email" value="" class="form-control not-dark" />
											</div>

											<div class="col-12 form-group">
												<label for="login-form-password">Password:</label>
												<input type="password" id="login-form-password" name="password" value="" class="form-control not-dark" />
											</div>

											<div class="col-12 form-group mb-0">
												<button class="button button-3d button-black m-0" id="login-form-submit" name="login-form-submit" value="login">Login</button>
												<a href="/member/form" class="float-right">Sign Up?</a>
											</div>
										</div>
									</form>

									<div class="line line-sm"></div>
								</div>
							</div>

							<div class="text-center text-muted mt-3"><small>Copyrights &copy; All Rights Reserved by Rgas Inc.</small></div>

						</div>
					</div>
				</div>

			</div>
		</section><!-- #content end -->

	</div><!-- #wrapper end -->

	<!-- Go To Top
	============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- JavaScripts
	============================================= -->
	<script src="/js/jquery.js"></script>
	<script src="/js/plugins.min.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="/js/functions.js"></script>

</body> 
</html>