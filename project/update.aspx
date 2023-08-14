<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="project.update1" %>
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
.error-message {
    color: red;
}
 body{
                background-color:azure;
            }
 .btn-primary1 {
    background-color:cadetblue;
}
</style>

            <div class="form-container">
            <asp:Button CssClass="btn btn-primary" runat="server" ID="btnview" text="View" PostBackUrl="~/adminpage.aspx" CausesValidation="false" />
            <asp:Button CssClass="btn btn-primary" runat="server" ID="btnaddbus" text="Add Bus" PostBackUrl="~/Insert.aspx" CausesValidation="false" />
            <asp:Button CssClass="btn btn-danger" runat="server" ID="btndelete" Text="Delete Bus" PostBackUrl="~/delete.aspx" CausesValidation="false"  />
            <asp:Button CssClass="btn btn-warning" runat="server" ID="Button1" Text="Update Bus" PostBackUrl="~/update.aspx" CausesValidation="false" />
            <asp:Button CssClass="btn btn-primary1" runat="server" ID="btnbookingdetail" Text="Booking Details" PostBackUrl="~/bookingdetail.aspx" CausesValidation="false" />

            <br />
            <br />
             <table class="form-table">
             <tr>
                 <td> <asp:Label runat="server" ID="lblbusno" Text="Bus No"></asp:Label></td>
                 <td><asp:TextBox runat="server" ID="txtbusno" ></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" ID="rfv" ControlToValidate="txtbusno" ErrorMessage="Bus no. is required" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
                 
             </tr>
             <tr>
                 <td><asp:Label runat="server" ID="lblbustype" Text="Bus type"></asp:Label></td>
                 <td><asp:DropDownList runat="server" ID="ddltype">
                     <asp:ListItem>Choose type</asp:ListItem>
                     <asp:ListItem>Normal</asp:ListItem>
                     <asp:ListItem>Ac</asp:ListItem>
                     </asp:DropDownList>
                 </td>
             </tr>
              <tr>
                 <td> <asp:Label runat="server" ID="lblrow" Text="Seat row"></asp:Label></td>
                 <td><asp:TextBox runat="server" ID="txtrow" ></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="txtrow" ErrorMessage="Enter no. of seats rows" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
                 
             </tr>
             <tr>
                 <td> <asp:Label runat="server" ID="lblcolumn" Text="Seat column"></asp:Label></td>
                 <td><asp:TextBox runat="server" ID="txtcolumn" ></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="txtcolumn" ErrorMessage="Enter no. of seats columns" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
                 
             </tr>
             <tr>
                 <td> <asp:Label runat="server" ID="lblorign" Text="Origin "></asp:Label></td>
                 <td><asp:TextBox runat="server" ID="txtorign" ></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ControlToValidate="txtorign" ErrorMessage="Enter origin" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
                 
             </tr>
             <tr>
                 <td> <asp:Label runat="server" ID="lbldestination" Text="Destination "></asp:Label></td>
                 <td><asp:TextBox runat="server" ID="txtdestination" ></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ControlToValidate="txtdestination" ErrorMessage="Enter destination" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
                 
             </tr>
             <tr>
                 <td> <asp:Label runat="server" ID="lblbusname" Text="Bus Name"></asp:Label></td>
                 <td><asp:TextBox runat="server" ID="txtbusname" ></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ControlToValidate="txtbusname" ErrorMessage="Enter Bus name" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
                 
             </tr>
                <tr>
                    <td><asp:Label runat="server" ID="lbldate" Text="Date:"></asp:Label></td>
                    <td><asp:TextBox runat="server" ID="txtdate"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ControlToValidate="txtdate" ErrorMessage="Enter Date" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label runat="server" ID="lbltime" Text="Time:"></asp:Label></td>
                    <td><asp:TextBox runat="server" ID="txttime"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ControlToValidate="txttime" ErrorMessage="Enter time" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label runat="server" ID="lblseats" Text="No_of_seats:"></asp:Label></td>
                    <td><asp:TextBox runat="server" ID="Textseats"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ControlToValidate="Textseats" ErrorMessage="Enter Total seat" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label runat="server" ID="lblfair" Text="Fair:"></asp:Label></td>
                    <td><asp:TextBox runat="server" ID="txtfair"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" ControlToValidate="txtfair" ErrorMessage="Enter fair" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr><td></td></tr>
                <tr><td></td></tr>
                <tr><td></td></tr>
                <tr><td></td></tr>
                <tr><td></td></tr>
                <tr><td></td></tr>
            <tr>
                    <td><asp:Label runat="server" ID="lblupdate" Text="Enter bus Id for update" Font-Bold="true"></asp:Label></td>
                    <td><asp:TextBox CssClass="form-control" runat="server" ID="txtupdate"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator runat="server" ID="rfvupdta" ErrorMessage="Enter update_Id" ControlToValidate="txtupdate" ForeColor="red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td><asp:Button CssClass="btn btn-warning" runat="server" ID="btnupdate" OnClick="btnupdate_Click" Text="Update" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblMessage1" />

                    </td>
                </tr>
            </table>
        </div>

</asp:Content>
