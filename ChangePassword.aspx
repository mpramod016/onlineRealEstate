<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    	<div class="innerpage-banner center bg-overlay-dark-7 py-7" style="background:url() no-repeat; background-size:cover; background-position: center center;">
		<div class="container">
			<div class="row all-text-white">
				<div class="col-md-12 align-self-center">
					<h1 class="innerpage-title">Change Password</h1>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item active"><a href="#"><i class="ti-home"></i> Home</a></li>
							<li class="breadcrumb-item">Change Password</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- =======================
	Banner innerpage -->

    <asp:Label ID="lblMID" runat="server" Text="" Visible="false"></asp:Label>
	<!-- =======================
	Form -->
	<section>
		<div class="container">
			<div class="row">
				<div class="col-md-6">

					<!-- Email -->
					<div class="form-group">
						<label>Old Password</label>
                        <asp:TextBox ID="txtOldPassword" runat="server" CssClass=form-control TextMode=Password></asp:TextBox>
					</div>

					<!-- Password -->
					<div class="form-group">
						<label>New Password</label>
					<asp:TextBox ID="txtNewPassword" runat="server" CssClass=form-control TextMode=Password></asp:TextBox>
					</div>
					<div class="form-group">
						 <asp:Button ID="Button1" runat="server" Text="Update" 
                            CssClass="btn btn-warning btn-block" onclick="Button1_Click" />
					</div>
				</div>
			</div>
		</div>
	</section>
</asp:Content>

