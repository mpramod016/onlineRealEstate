<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="Commercialpage.aspx.cs" Inherits="Commercialpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="innerpage-banner center bg-overlay-dark-7 py-7" style="background: url() no-repeat; background-size: cover; background-position: center center;">
        <div class="container">
            <div class="row all-text-white">
                <div class="col-md-12 align-self-center">
                    <h1 class="innerpage-title">Commercial Page</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active"><a href="#"><i class="ti-home"></i>Home</a></li>
                            <li class="breadcrumb-item">Commercial Page</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- =======================
	Banner innerpage -->

    <!-- =======================
	blog -->
    <section class="blog-page pb-0">
        <div class="container">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="row">
                        <!-- sidebar start -->
                        <aside class="col-md-3 sidebar order-last order-md-first">
                            <!-- Text Widget -->
                            <div class="widget">
                                <h5 class="widget-title">PropertyType</h5>
                                <p class="mb-0"><%#Eval("PropertyType")%></p>
                            </div>
                            <div class="widget">
                                <h5 class="widget-title">RoomType</h5>
                                <p class="mb-0"><%#Eval("RoomType")%></p>
                            </div>
                            <div class="widget">
                                <h5 class="widget-title">BuildingType</h5>
                                <p class="mb-0"><%#Eval("BuildingType")%></p>
                            </div>
                            <div class="widget">
                                <h5 class="widget-title">Rent</h5>
                                <p class="mb-0"><%#Eval("Rent")%></p>
                            </div>
                            <div class="widget">
                                <h5 class="widget-title">BuildingHsNo</h5>
                                <p class="mb-0"><%#Eval("BuildingHsNo")%></p>
                            </div>
                            <div class="widget">
                                <h5 class="widget-title">StreetName</h5>
                                <p class="mb-0"><%#Eval("StreetName")%></p>
                            </div>
                            <div class="widget">
                                <h5 class="widget-title">EstateName</h5>
                                <p class="mb-0"><%#Eval("EstateName")%></p>
                            </div>
                            <div class="widget">
                                <h5 class="widget-title">PostalCode</h5>
                                <p class="mb-0"><%#Eval("PostalCode")%></p>
                            </div>
                            <div class="widget">
                                <h5 class="widget-title">Country</h5>
                                <p class="mb-0"><%#Eval("Country")%></p>
                            </div>
                            <div class="widget">
                                <h5 class="widget-title">State</h5>
                                <p class="mb-0"><%#Eval("State")%></p>
                            </div>
                            <div class="widget">
                                <h5 class="widget-title">District</h5>
                                <p class="mb-0"><%#Eval("District")%></p>
                            </div>
                            <div class="widget">
                                <h5 class="widget-title">Email</h5>
                                <p class="mb-0"><%#Eval("Email")%></p>
                            </div>
                            <div class="widget">
                                <h5 class="widget-title">Price</h5>
                                <p class="mb-0"><%#Eval("Price")%></p>
                            </div>
                            <div class="widget">
                                <h5 class="widget-title">Valuation</h5>
                                <p class="mb-0"><%#Eval("Valuation")%></p>
                            </div>
                            <div class="widget">
                                <h5 class="widget-title">BuiltinArea</h5>
                                <p class="mb-0"><%#Eval("BuiltinArea")%></p>
                            </div>
                            <div class="widget">
                                <h5 class="widget-title">Age</h5>
                                <p class="mb-0"><%#Eval("Age")%></p>
                            </div>
                            <div class="widget">
                                <h5 class="widget-title">NoofBedRooms</h5>
                                <p class="mb-0"><%#Eval("NoofBedRooms")%></p>
                            </div>

                        </aside>
                        <!-- sidebar end -->

                        <!-- blog start -->
                        <div class="col-md-9 mb-6 order-first order-md-first">
                            <!-- Post item  with image-->
                            <div class="post-item">
                                <div class="post-item-wrap">
                                    <div class="post-image">
                                        <a href="#">
                                            <img src="Images/Property/<%#Eval("PropertyId") %>/<%#Eval("ImageName") %><%#Eval("Extention") %>" alt="">
                                        </a>
                                    </div>
                                    <div class="post-item-desc">
                                        <h5 class="mt-3">Summary</h5>
                                        <p><%#Eval("Summary")%></p>
                                        <h5 class="my-3">Description</h5>
                                        <p><%#Eval("Description")%></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </section>
</asp:Content>

