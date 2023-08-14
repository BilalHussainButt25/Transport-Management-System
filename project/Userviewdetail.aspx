<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Userviewdetail.aspx.cs" Inherits="project.Userviewdetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NavbarContentPlaceHolder" runat="server">
    <nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand logo" runat="server" href="~/">Online bus booking</a>

        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target=".navbar-collapse" title="Toggle navigation" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-collapse collapse d-sm-inline-flex justify-content-between">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link custom-nav-link" runat="server" href="Default.aspx">Home</a>
                </li>
            </ul>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link custom-nav-link" runat="server">Hello User!</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link custom-nav-link" runat="server" href="userbooking.aspx">Book Ticket</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link custom-nav-link" runat="server" href="Origin_Destination.aspx">Search Bus</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link custom-nav-link" runat="server" href="Login.aspx">Log out</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <style>
                   .grid-view {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
}

.grid-view th,
.grid-view td {
    padding: 10px;
    border: 1px solid #ddd;
}

.grid-view th {
    background-color: #f2f2f2;
    text-align: left;
}

.grid-view tr:nth-child(even) {
    background-color: #f2f2f2;
}
    </style>

    <h2>Details of Bookings</h2>

    <asp:GridView runat="server" ID="gvadd" AutoGenerateColumns="false" CssClass="grid-view">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Customer_ID" />
                <asp:BoundField DataField="First_Name" HeaderText="First_Name" />
                <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" />
                <asp:BoundField DataField="Phone_No" HeaderText="Phone_No" />
                <asp:BoundField DataField="Address" HeaderText="Address" />
                <asp:BoundField DataField="No_of_seats" HeaderText="No_of_seats" />
                <asp:BoundField DataField="Bus_Id" HeaderText="Bus_Id" />
                
            </Columns>
        </asp:GridView>
</asp:Content>
