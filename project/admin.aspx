<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="project.admin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<style>
body {
    background-color: azure; 
}

.form-container {
    background-color: #fff; 
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px 0 rgba(0,0,0,.1);
}
.validation-summary {
    color: red;
    background-color: #f8d7da;
    border-color: #f5c6cb;
    padding: 10px;
    border-radius: 5px;
    margin-bottom: 20px;
}
</style>

<div class="container">
    <div class="form-container">
        <h1>Admin</h1>
        <div class="form-group">
            <asp:Label ID="lbladminid" runat="server" Text="Admin ID: "></asp:Label>
            <asp:TextBox CssClass="form-control" runat="server" ID="txtadminid"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="rfvadminid" ControlToValidate="txtadminid" ErrorMessage="Admin ID is required" ForeColor="Red"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator runat="server" ID="rfvadminemail" ControlToValidate="txtadminid" ErrorMessage="Enter correct email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"> </asp:RegularExpressionValidator>
            </div>
        <div class="form-group">
            <asp:Label ID="lbladminpassword" runat="server" Text="Password: "></asp:Label>
            <asp:TextBox CssClass="form-control" runat="server" ID="txtadminpassword" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="rfvadminpassword" ControlToValidate="txtadminpassword" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <asp:Button CssClass="btn btn-primary" runat="server" ID="btnlogin" Text="Login" OnClick="btnlogin_Click"></asp:Button>
        </div>
        <asp:Label ID="lbllabeladmin" runat="server"></asp:Label>
        <asp:ValidationSummary CssClass="validation-summary" ID="ValidationSummary1" runat="server" DisplayMode="BulletList" ShowSummary="true" HeaderText="Errors:" />
    </div>
</div>

</asp:Content>
