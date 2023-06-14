<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home | Online Real Estate Management System</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="author" content="Webestica.com">
	<meta name="description" content="Creative Multipurpose Bootstrap Template">
	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900%7CPlayfair+Display:400,400i,700,700i%7CRoboto:400,400i,500,700" rel="stylesheet">

	<!-- Plugins CSS -->
	<link rel="stylesheet" type="text/css" href="assets/vendor/font-awesome/css/font-awesome.min.css" />
	<link rel="stylesheet" type="text/css" href="assets/vendor/themify-icons/css/themify-icons.css" />
	<link rel="stylesheet" type="text/css" href="assets/vendor/animate/animate.min.css" />
	<link rel="stylesheet" type="text/css" href="assets/vendor/fancybox/css/jquery.fancybox.min.css" />
	<link rel="stylesheet" type="text/css" href="assets/vendor/owlcarousel/css/owl.carousel.min.css" />
	<link rel="stylesheet" type="text/css" href="assets/vendor/swiper/css/swiper.min.css" />

	<!-- Theme CSS -->
	<link rel="stylesheet" type="text/css" href="assets/css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>

	<header class="header-static navbar-sticky navbar-light">
		<nav class="navbar navbar-expand-lg">
			<div class="container">
				<!-- Logo -->
				<a class="navbar-brand" href="index.html">
					Online Real Estate Management System
				</a>
				<!-- Menu opener button -->
				<button class="navbar-toggler ml-auto" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
				  <span class="navbar-toggler-icon"> </span>
			  </button>
				<!-- Main Menu Start -->
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<ul class="navbar-nav ml-auto">
						<!-- Menu item 1 Demos-->
						
					</ul>
				</div>
				<!-- Main Menu End -->
				<!-- Header Extras Start-->
				<div class="navbar-nav">
                <div class="nav-item search border-0 pl-3 pr-0 px-lg-2" id="search">
					</div>
					<div class="nav-item border-0 d-none d-lg-inline-block align-self-center">
						<a href="LoginPage.aspx" class=" btn btn-sm btn-grad text-white mb-0">Login</a>
					</div>
				</div>
				<!-- Header Extras End-->
			</div>
		</nav>
	</header>

	<section>
		<div class="container">
			<div class="row justify-content-between align-items-center">
				<!-- left -->
				<div class="col-md-6">
					<div class="row mt-4 mt-md-0">
						<div class="col-7 px-2 mb-3">
							<div class="border-radius-3 wow fadeInLeft bg-grad p-2 p-sm-3 p-lg-4 p-xl-5 all-text-white" data-wow-duration="0.8s" data-wow-delay="0s">
								<span>Our goal:</span>
								<h3 class="font-weight-bold">"If we build it, they will come"</h3>
							</div>
						</div>
					</div>
				</div>
				<!-- right -->
				<div class="col-md-6 pl-lg-5">
					<h2 class="h1">About Us</h2>
					<p class="lead">Property Search is a unique virtual platform that allows any
                        user to post a property related advertisement on the internet without incurring
                        costly advertisement fees.</p>
					<div>
						<a href="#" class="btn btn-dark">Contact us</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="p5-4">
		<div class="container">
			<div class="d-block d-md-flex bg-grad p-4 p-sm-5 all-text-white border-radius-3 pattern-overlay-3">
				<div class="align-self-center text-center text-md-left">
					<h3>Online Real Estate Management System</h3>
					<p class="m-0">User-friendliness, reliable service together with maximum and continuous exposure
                    are the qualities that Property Search stand for. We believe that whether you are searching
                    or selling your property online, a pleasant and hassle free experience is of utmost
                    importance.</p>
				</div>
				<div class="mt-3 mt-md-0 text-center text-md-right ml-md-auto align-self-center">
					<button class="btn btn-white mb-0">Login Now</button>
				</div>
			</div>
		</div>
	</section>
	<footer class="footer bg-light pt-6">
		<div class="footer-content pb-3">
			<div class="container">
				<div class="row">
					<!-- Footer widget 1 -->
					<div class="col-md-4">
						<div class="widget">
							<a href="Index.aspx" class="footer-logo">
								OREMS
							</a>
						</div>
					</div>
					<!-- Footer widget 2 -->
					<div class="col-md-3 col-sm-6">
						<div class="widget address" style="background-image: url('assets/images/world-map.png'); background-position: 50% 20px; background-repeat: no-repeat; background-size: contain;">
							<ul class="list-unstyled">
								<li class="media mb-3"><i class="mr-3 display-8 ti-map-alt"></i>1421 Coburn Hollow Road Metamora, Near Center Point, IL 61548. </li>
								<li class="media mb-3"><i class="mr-3 display-8 ti-headphone-alt"></i> (251) 854-6308 </li>
								<li class="media mb-3"><i class="mr-3 display-8 ti-email"></i> help@rjdeveloper.com</li>
								<li class="media mb-3"><i class="mr-3 display-8 ti-time"></i>
									<p>Mon - Fri: <strong>09:00 - 21:00</strong> <br>Sat & Sun: <strong>Closed</strong></p>
								</li>
							</ul>
						</div>
					</div>
					<!-- Footer widget 3 -->
					<div class="col-md-2 col-sm-6">
						<div class="widget">
							<h6>Quick LInks</h6>
							<ul class="nav flex-column primary-hover">
								<li class="nav-item"><a class="nav-link" href="#">Home</a></li>
								<li class="nav-item"><a class="nav-link" href="#">Residential</a></li>
								<li class="nav-item"><a class="nav-link" href="#">Commercial</a></li>
								<li class="nav-item"><a class="nav-link" href="#">Enquiry</a></li>
								<li class="nav-item"><a class="nav-link" href="#">Login</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- Footer widget 4 -->
			</div>
		</div>
		<div class="divider mt-3"></div>
		<!--footer copyright -->
		<div class="footer-copyright py-3">
			<div class="container">
				<div class="d-md-flex justify-content-between align-items-center py-3 text-center text-md-left">
					<!-- copyright text -->
					<div class="copyright-text">©2019 All Rights Reserved by <a href="#!"> Online Real Estate Management System</a></div>
					<!-- copyright links-->
					<div class="copyright-links primary-hover mt-3 mt-md-0">
						<ul class="list-inline">
							<li class="list-inline-item pl-2"><a class="list-group-item-action" href="#">Home</a></li>
							<li class="list-inline-item pl-2"><a class="list-group-item-action" href="#">Residential</a></li>
							<li class="list-inline-item pl-2"><a class="list-group-item-action" href="#">Commercial</a></li>
							<li class="list-inline-item pl-2"><a class="list-group-item-action" href="#">Enquiry</a></li>
							<li class="list-inline-item pl-2"><a class="list-group-item-action pr-0" href="#">Login</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<div> <a href="#" class="back-top btn btn-grad"><i class="ti-angle-up"></i></a> </div>

    </div>
    </form>
    <script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/popper.js/umd/popper.min.js"></script>
	<script src="assets/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="assets/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!--Vendors-->
	<script src="assets/vendor/fancybox/js/jquery.fancybox.min.js"></script>
	<script src="assets/vendor/owlcarousel/js/owl.carousel.min.js"></script>
	<script src="assets/vendor/swiper/js/swiper.js"></script>
	<script src="assets/vendor/wow/wow.min.js"></script>

	<!--Template Functions-->
	<script src="assets/js/functions.js"></script>
</body>
</html>
