<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userbooking.aspx.cs" Inherits="project.userbooking" %>
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
                    <a class="nav-link custom-nav-link" runat="server" href="Userviewdetail.aspx">Booking Details</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link custom-nav-link" runat="server" id="linklogout" href="Login.aspx">Logout</a>
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
                    <td><asp:Button CssClass="btn btn-warning" runat="server" ID="btnupdate" Text="Search" OnClick="btnupdate_Click" CausesValidation="false" /></td>
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
     
    <table>
        <tr>
            <td><h2>Book Seat</h2></td>
        </tr>
    <tr>
                 <td> <asp:Label runat="server" ID="lblfname" Text="First Name"></asp:Label></td>
                 <td><asp:TextBox runat="server" ID="txtfname" ></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" ID="rfv" ControlToValidate="txtfname" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
             </tr>
     <tr>
                 <td> <asp:Label runat="server" ID="lbllname" Text="Last Name"></asp:Label></td>
                 <td><asp:TextBox runat="server" ID="txtlname" ></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="txtlname" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
             </tr>
     <tr>
                 <td> <asp:Label runat="server" ID="lblpnumber" Text="Phone Number"></asp:Label></td>
                 <td><asp:TextBox runat="server" ID="txtpnumber" ></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="txtpnumber" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
             </tr>
    <tr>
                 <td> <asp:Label runat="server" ID="lbladdress" Text="Address"></asp:Label></td>
                 <td><asp:TextBox runat="server" ID="txtaddress" ></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ControlToValidate="txtaddress" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
             </tr>
    <tr>
                 <td> <asp:Label runat="server" ID="lblNoOfseats" Text="No. of Seats"></asp:Label></td>
                 <td><asp:TextBox runat="server" ID="TxtNoOfseats" ></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ControlToValidate="txtNoOfseats" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
             </tr>
    <tr>
                 <td> <asp:Label runat="server" ID="lblbusId" Text="Bus ID"></asp:Label></td>
                 <td><asp:TextBox runat="server" ID="txtbusId" ></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ControlToValidate="txtbusId" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
             </tr>
        <tr>
                    <td><asp:Button CssClass="btn btn-primary" runat="server" ID="btninsert" Text="Book" OnClick="btninsert_Click" /></td>
                </tr>
         <tr><td>
                    <asp:Label runat="server" ID="lblMessage" />

     </table>

</asp:Content>
