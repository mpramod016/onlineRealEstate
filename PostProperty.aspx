<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="PostProperty.aspx.cs" Inherits="PostProperty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    	<div class="innerpage-banner center bg-overlay-dark-7 py-7" style="background:url() no-repeat; background-size:cover; background-position: center center;">
		<div class="container">
			<div class="row all-text-white">
				<div class="col-md-12 align-self-center">
					<h1 class="innerpage-title">Post Property</h1>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item active"><a href="#"><i class="ti-home"></i> Home</a></li>
							<li class="breadcrumb-item">Post Property</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- =======================
	Banner innerpage -->
    <asp:Label ID="lblID" runat="server" Text="" Visible="false"></asp:Label><asp:Label ID="lblProperty" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lblMID" runat="server" Text="" Visible="false"></asp:Label>
	<!-- =======================
	Form -->
	<section>
		<div class="container">
			<div class="row">
				<div class="col-md-6">

					<!-- Email -->
					<div class="form-group">
						<label>Property Type</label>
                        <asp:DropDownList ID="ddlpropertyType" runat="server" CssClass="form-control" required>
                            <asp:ListItem>Residential</asp:ListItem>
                            <asp:ListItem>Commerical</asp:ListItem>
                        </asp:DropDownList>
					</div>

					<!-- Email -->
					<div class="form-group">
						<label>Room Type</label>
						   <asp:DropDownList ID="ddlRoom" runat="server" CssClass="form-control" required>
                               <asp:ListItem>Private</asp:ListItem>
                               <asp:ListItem>HDB</asp:ListItem>
						   </asp:DropDownList>
					</div>

					<!-- Email -->
					<div class="form-group">
						<label>Building Type</label>
						   <asp:DropDownList ID="ddlBuilding" runat="server" CssClass="form-control" required></asp:DropDownList>
					</div>

					<div class="form-group">
						<label>Rent/Sale</label>
						   <asp:DropDownList ID="ddlrent" runat="server" CssClass="form-control" required>
                               <asp:ListItem>Rent</asp:ListItem>
                               <asp:ListItem>Sale</asp:ListItem>
						   </asp:DropDownList>
					</div>

				<!-- Email -->
					<div class="form-group">
						<label>Building HsNo</label>
                        <asp:TextBox ID="txtBuilding" runat="server" CssClass="form-control" required></asp:TextBox>
					</div>

					<div class="form-group">
						<label>Street Name</label>
						<asp:TextBox ID="txtStreetName" runat="server" CssClass="form-control" required></asp:TextBox>
					</div>
      
					<div class="form-group">
						<label>Building/Estate Name</label>
						<asp:TextBox ID="txtBuildingName" runat="server" CssClass="form-control" required></asp:TextBox>
					</div>
         
					<div class="form-group">
						<label>Postal Code</label>
						<asp:TextBox ID="txtPostalCode" runat="server" CssClass="form-control" required></asp:TextBox>
					</div>
                    <div class="form-group">
						<label>Country</label>
						 <asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-control" required></asp:DropDownList>
					</div>
                    <div class="form-group">
						<label>State</label>
						 <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control" required></asp:DropDownList>
					</div>
                     <div class="form-group">
						<label>District</label>
					 <asp:DropDownList ID="ddlDistrict" runat="server" CssClass="form-control" required></asp:DropDownList>
					</div>
				</div>

				<div class="col-md-6">

					<!-- Email -->
					<div class="form-group">
						<label>Email</label>
						<asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" required></asp:TextBox>
                         <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ErrorMessage="Invalid Email Format" CssClass="text-danger"></asp:RegularExpressionValidator>
					</div>

					<!-- Email -->
					<div class="form-group">
						<label>Price</label>
						<asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" required></asp:TextBox>
					</div>

					<!-- Email -->
					<div class="form-group">
						<label>Valuation</label>
						<asp:TextBox ID="txtValuation" runat="server" CssClass="form-control" required></asp:TextBox>
					</div>

					<div class="form-group">
						<label>Built in Area</label>
						<asp:TextBox ID="txtArea" runat="server" CssClass="form-control" required></asp:TextBox>
					</div>

				<!-- Email -->
					<div class="form-group">
						<label>Age</label>
						<asp:TextBox ID="txtAge" runat="server" CssClass="form-control" required></asp:TextBox>
					</div>

					<div class="form-group">
						<label>No.of BedRooms</label>
						<asp:TextBox ID="txtBedRooms" runat="server" CssClass="form-control" required></asp:TextBox>
					</div>
      
					<div class="form-group">
						<label>Summary</label>
						<asp:TextBox ID="txtSummary" runat="server" CssClass="form-control" required></asp:TextBox>
					</div>
         
					<div class="form-group">
						<label>Description</label>
						<asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" required></asp:TextBox>
					</div>
                    <div class="form-group">
						<label>Upload Pictures</label>
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" required></asp:FileUpload>
					</div>
                     <div class="form-group">
						 <asp:Button ID="Button1" runat="server" Text="Submit" 
                            CssClass="btn btn-warning btn-block" OnClick="Button1_Click"  />
					</div>
				</div>
			</div>
		</div>
	</section>
</asp:Content>

