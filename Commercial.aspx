<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="Commercial.aspx.cs" Inherits="Commercial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="innerpage-banner center bg-overlay-dark-7 py-7" style="background:url() no-repeat; background-size:cover; background-position: center center;">
		<div class="container">
			<div class="row all-text-white">
				<div class="col-md-12 align-self-center">
					<h1 class="innerpage-title">Commercial</h1>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item active"><a href="index.html"><i class="ti-home"></i> Home</a></li>
							<li class="breadcrumb-item">Commercial</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- =======================
	Banner innerpage -->

	
	<section class="blog-page pb-0">
        <div class="container">
            <div class="row">
                <div class="col-md-12 blog-grid blog-grid-4 portfolio-wrap" data-isotope='{ "itemSelector": ".post-item", "layoutMode": "fitRows" }'>
                    <!-- Post item  with image-->
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <div class="post-item">
                                <div class="post-item-wrap">
                                    <div class="post-image">
                                        <a href="#">
                                            <img src="Images/Property/<%#Eval("PropertyId") %>/<%#Eval("ImageName") %><%#Eval("Extention") %>" alt="">
                                        </a>
                                        <span class="post-meta-category bg-grad"><a href="#"><%#Eval("BuildingHsNo")%></a></span>
                                    </div>
                                    <div class="post-item-desc">
                                      
                                        <h4><a href="#"><a href="#"><%#Eval("BuildingHsNo")%></a></h4>
                                        <p><%#Eval("Description")%></p>
                                        <a href="Commercialpage.aspx?ID=<%#Eval("PropertyId")%>" class="item-link">Continue reading<i class="ti-minus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

                </div>
            </div>
        </div>
    </section>
</asp:Content>

