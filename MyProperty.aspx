<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="MyProperty.aspx.cs" Inherits="MyProperty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="innerpage-banner center bg-overlay-dark-7 py-7" style="background: url() no-repeat; background-size: cover; background-position: center center;">
        <div class="container">
            <div class="row all-text-white">
                <div class="col-md-12 align-self-center">
                    <h1 class="innerpage-title">My Proerty</h1>

                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active"><a href="#"><i class="ti-home"></i>Home</a></li>
                            <li class="breadcrumb-item">My Prooerty</li>
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
	Table -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h5 class="text-center mb-4">My Property</h5>
                    <div class="table-responsive-sm">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <HeaderTemplate>
                                <table class="table table-lg table-noborder table-striped">
                                    <thead class="all-text-white bg-grad">
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">PropertyType</th>
                                            <th scope="col">RoomType</th>
                                            <th scope="col">BuildingType</th>
                                            <th scope="col">Rent</th>
                                            <th scope="col">BuildingHsNo</th>
                                            <th scope="col">Country</th>
                                            <th scope="col">State</th>
                                            <th scope="col">District</th>
                                            <th scope="col">Price</th>
                                            <th scope="col">Valuation</th>
                                            <th scope="col">BuiltinArea</th>
                                            <th scope="col">Age</th>
                                            <th scope="col">NoofBedRooms</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("PropertyId")%></td>
                                    <td><%#Eval("PropertyType")%></td>
                                    <td><%#Eval("RoomType")%></td>
                                    <td><%#Eval("BuildingType")%></td>
                                      <td><%#Eval("Rent")%></td>
                                    <td><%#Eval("BuildingHsNo")%></td>
                                    <td><%#Eval("Country")%></td>
                                    <td><%#Eval("State")%></td>
                                    <td><%#Eval("District")%></td>
                                    <td><%#Eval("Price")%></td>
                                    <td><%#Eval("Valuation")%></td>
                                    <td><%#Eval("BuiltinArea")%></td>
                                     <td><%#Eval("Age")%></td>
                                    <td><%#Eval("NoofBedRooms")%></td>

                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </tbody>
                    </table>
                            </FooterTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

