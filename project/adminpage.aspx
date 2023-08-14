<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminpage.aspx.cs" Inherits="project.adminpage1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="NavbarContentPlaceHolder" runat="server">
    

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
                    <a class="nav-link custom-nav-link" runat="server">Hello Admin!</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link custom-nav-link" runat="server" href="admin.aspx">Log out</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

    </asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <style>
            body{
                background-color:azure;
            }
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

.btn {
    display: inline-block;
    margin-right: 10px;
    padding: 10px 15px;
    border: none;
    border-radius: 5px;
    color: #fff;
    cursor: pointer;
}

.btn-primary {
    background-color: #007bff;
}
.btn-primary1 {
    background-color:cadetblue;
}

.btn-primary:hover {
    background-color: #0056b3;
}

.btn-danger {
    background-color: #dc3545;
}

.btn-danger:hover {
    background-color: #c82333;
}

.btn-warning {
    background-color: #ffc107;
}

.btn-warning:hover {
    background-color: #e0a800;
}
 .custom-nav-link {
    color: white;
    font-weight: bold;
}

.custom-nav-link:hover {
    color:white; 
}
.logo {
    color:white; 
    font-size: 24px;
    font-weight: bold;
    text-decoration: none;
}
.logo:hover {
    color:white; 
}

    </style>

    <div class="container">
        <asp:Button CssClass="btn btn-primary" runat="server" ID="btnview" Text="View" PostBackUrl="~/adminpage.aspx" />
        <asp:Button CssClass="btn btn-primary" runat="server" ID="btnaddbus" Text="Add Bus" PostBackUrl="~/Insert.aspx" />
        <asp:Button CssClass="btn btn-danger" runat="server" ID="btndelete" Text="Delete Bus" PostBackUrl="~/delete.aspx" />
        <asp:Button CssClass="btn btn-warning" runat="server" ID="btnupdate" Text="Update Bus" PostBackUrl="~/update.aspx" />
                <asp:Button CssClass="btn btn-primary1" runat="server" ID="btnbookingdetail" Text="Booking Details" PostBackUrl="~/bookingdetail.aspx" CausesValidation="false"/>

        
        <br />
        <br />
        <asp:GridView runat="server" ID="gvadd" AutoGenerateColumns="false" CssClass="grid-view">
            <Columns>
                <asp:BoundField DataField="Bus_id" HeaderText="Bus_id" />
                <asp:BoundField DataField="Bus_no" HeaderText="Bus_no" />
                <asp:BoundField DataField="Bus_type" HeaderText="Bus_type" />
                <asp:BoundField DataField="Seat_rows" HeaderText="Seat_rows" />
                <asp:BoundField DataField="Seat_column" HeaderText="Seat_column" />
                <asp:BoundField DataField="Origin" HeaderText="Origin" />
                <asp:BoundField DataField="Destination" HeaderText="Destination" />
                <asp:BoundField DataField="Bus_name" HeaderText="Bus_name" />
                <asp:BoundField DataField="Date" HeaderText="Date" />
                <asp:BoundField DataField="Time" HeaderText="Time" />
                <asp:BoundField Datafield="No_of_seats" HeaderText="No_of_seats" />
                <asp:BoundField Datafield="Fair" HeaderText="Fair" />
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
