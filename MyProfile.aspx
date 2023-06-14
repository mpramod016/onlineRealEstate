<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="innerpage-banner center bg-overlay-dark-7 py-7" style="background: url() no-repeat; background-size: cover; background-position: center center;">
        <div class="container">
            <div class="row all-text-white">
                <div class="col-md-12 align-self-center">
                    <h1 class="innerpage-title">My Profile</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active"><a href="index.html"><i class="ti-home"></i>Home</a></li>
                            <li class="breadcrumb-item">My Profile</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- =======================
	Banner innerpage -->


    <!-- =======================
	Form -->
    <asp:Label ID="lblID" runat="server" Text="" Visible="false"></asp:Label>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-6">

                    <!-- Email -->
                    <div class="form-group">
                        <label>Name</label>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <!-- Password -->
                    <div class="form-group">
                        <label>Date Of Birth</label>
                        <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label>Address Line</label>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                    </div>
                    <!-- size -->
                    <div class="form-group">
                        <label>Country</label>
                        <asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>

                    <div class="form-group">
                        <label>State</label>
                       <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>

                    <div class="form-group">
                        <label>District</label>
                       <asp:DropDownList ID="ddlDistrict" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>

                </div>

                <div class="col-md-6">

                    <div class="form-group">
                        <label for="exampleFormControlFile1">Contact  Number</label>
                        <asp:TextBox ID="txtContact" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  
ControlToValidate="txtContact" ErrorMessage="Invalid Phone Number"   CssClass="text-danger"
ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator> 
                    </div>

                    <div class="form-group">
                        <label for="exampleFormControlFile1">Email  ID</label>
                        <asp:TextBox ID="txtMail" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtMail" ErrorMessage="Invalid Email Format" CssClass="text-danger"></asp:RegularExpressionValidator>
                    </div>
                  
                    <div class="form-group">
                        <label>Realter</label>
                       <asp:DropDownList ID="ddlRealter" runat="server" CssClass="form-control">
                       <asp:ListItem>Yes</asp:ListItem>
                             <asp:ListItem>No</asp:ListItem>
                       </asp:DropDownList>
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

