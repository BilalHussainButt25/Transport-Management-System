<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Origin_Destination.aspx.cs" Inherits="project.Origin_Destination" %>
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
                    <a class="nav-link custom-nav-link" runat="server" href="Login.aspx">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
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

h1{
    text-align:center;
}
        h2 {
            margin-top: 0;
            color: #333;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
       .btn{
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
    </style>
      <h1>Welcome to Online Ticket Booking</h1>
    <table>
     
            
          
           <tr>
               <td><h2>Search Bus</h2></td>
           </tr>
        <tr>

                <td><asp:Label ID="lblOrigin" runat="server">Origin</asp:Label></td>
               <td> <asp:TextBox ID="txtOrigin" runat="server"></asp:TextBox></td>
            </tr>
                <tr>
<td>
                <asp:Label ID="lblDestination" runat="server">Destination</asp:Label></td>
              <td>  <asp:TextBox ID="txtDestination" runat="server"></asp:TextBox></td>
            
            </tr>
     <tr>
                    <td><asp:Button CssClass="btn btn-warning" runat="server" ID="btnupdate" Text="Search" OnClick="btnupdate_Click" /></td>
                </tr>
        </table>
    <br />
    <asp:GridView runat="server" ID="gvSearchResults" AutoGenerateColumns="false" CssClass="grid-view">
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
    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
</asp:Content>
