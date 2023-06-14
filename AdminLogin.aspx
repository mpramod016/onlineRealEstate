<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Login Page | Oline</title>
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

	<!-- Theme CSS -->
	<link rel="stylesheet" type="text/css" href="assets/css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <section class="p-0 d-flex align-items-center">
		<div class="container-fluid">
			<div class="row">
				<!-- left -->
				<div class="col-12 col-md-5 col-lg-4 d-md-flex align-items-center bg-grad h-sm-100-vh">
					<div class="w-100 p-3 p-lg-5 all-text-white">
						<div class="justify-content-center align-self-center">
							
						</div>
						<h3 class="font-weight-light">Online Real Estate Management System</h3>
						
					</div>
				</div>
				<!-- Right -->
				<div class="col-12 col-md-7 col-xl-8 mx-auto my-5">
					<div class="row h-100">
						<div class="col-12 col-md-10 col-lg-5 text-left mx-auto d-flex align-items-center">
							<div class="w-100">
								<h2 class="">Sign into your account!</h2>
								<h5 class="font-weight-light">Nice to see you! Please log in with your account.</h5>
								<div class="form mt-4 ">
									<div>
										<p class="text-left mb-2">UserName</p>
                                        <asp:TextBox ID="txtMail" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
									<div>
										<div class="d-flex justify-content-between align-items-center">
											<p class="text-left mb-2">Password</p>
										</div>
										<asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
									</div>
									<div class="row align-items-center no-gutters m-0">
										<div class="col-6 col-md-4 text-right"><asp:Button ID="btnLogin" runat="server" Text="login" CssClass="btn btn-dark" OnClick="btnLogin_Click" /></div>
                                        <a class="text-muted small mb-2" href="SignUp.aspx">User Login - Click Here.</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
    </div>
    </form>
    <script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/popper.js/umd/popper.min.js"></script>
	<script src="assets/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="assets/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!--Template Functions-->
	<script src="assets/js/functions.js"></script>
</body>
</html>
