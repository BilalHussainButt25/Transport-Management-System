<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="project.delete1" %>
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
.btn-primary1 {
    background-color:cadetblue;
}
</style>

        <div class="form-container">
            <asp:Button CssClass="btn btn-primary" runat="server" ID="btnview" text="View" PostBackUrl="~/adminpage.aspx" CausesValidation="false" />
            <asp:Button CssClass="btn btn-primary" runat="server" ID="btnaddbus" text="Add Bus" PostBackUrl="~/Insert.aspx" CausesValidation="false" />
            <asp:Button CssClass="btn btn-danger" runat="server" ID="btndelete1" Text="Delete Bus" PostBackUrl="~/delete.aspx" CausesValidation="false"  />
                      <asp:Button CssClass="btn btn-warning" runat="server" ID="btnupdate" Text="Update Bus" PostBackUrl="~/update.aspx" CausesValidation="false" />

            <asp:Button CssClass="btn btn-primary1" runat="server" ID="btnbookingdetail" Text="Booking Details" PostBackUrl="~/bookingdetail.aspx" CausesValidation="false" />

            <br />
            <br />
            <table class="form-table">
                <tr>
                  <td><asp:Label runat="server" ID="lblbusno" Text="Enter Bus ID: "></asp:Label></td>
                 
                  <td><asp:TextBox CssClass="form-control" runat="server" ID="txtbusno"></asp:TextBox>   </td>
                     <td><asp:RequiredFieldValidator runat="server" ID="rfv" ControlToValidate="txtbusno" ErrorMessage="Enter Bus_ID" ForeColor="red"></asp:RequiredFieldValidator></td> 
                </tr>
                <tr>
                    <td><asp:Button CssClass="btn btn-danger" runat="server" ID="btndelete" Text="Delete" OnClick="btndelete_Click" /></td>
                </tr>
            </table>
            <asp:Label runat="server" ID="lblMessage" />

        </div>
</asp:Content>
