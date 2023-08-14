<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="project.Login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
body {
    background-color: azure; /* change this color to change the background */
}

.form-container {
    background-color: #fff; /* change this color to change the form color */
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
        <h1>Login</h1>
        <div class="form-group">
            <asp:Label ID="lblusername" runat="server" Text="Username: "></asp:Label>
            <asp:TextBox CssClass="form-control" runat="server" ID="txtlusername"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="rfvusername" ControlToValidate="txtlusername" ErrorMessage="Username is required"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator runat="server" ID="rfvaloginemail" ControlToValidate="txtlusername" ErrorMessage="Enter correct email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             
            </div>
        <div class="form-group">
            <asp:Label ID="lbllpassword" runat="server" Text="Password: "></asp:Label>
            <asp:TextBox CssClass="form-control" runat="server" ID="txtlpassword" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="rfvpassword" ControlToValidate="txtlpassword" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <asp:Button CssClass="btn btn-primary" runat="server" ID="btnlogin" Text="Login" OnClick="btnlogin_Click"></asp:Button>
            <asp:HyperLink CssClass="back-link" runat="server" Text="Don't have account? Register now" NavigateUrl="~/Registration.aspx"></asp:HyperLink>
        </div>
        <asp:Label ID="lbllabel" runat="server"></asp:Label>
        <asp:ValidationSummary CssClass="validation-summary" ID="ValidationSummary1" runat="server" DisplayMode="BulletList" ShowSummary="true" HeaderText="Errors:" />
    </div>
</div>

</asp:Content>
