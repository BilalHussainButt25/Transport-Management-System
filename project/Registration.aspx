<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="project.Registration1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<style>
body {
    background-color:azure; /* change this color to change the background */
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
        <h1>Registration</h1>
        <div class="form-group">
            <asp:Label ID="lblname" runat="server" Text="Name: "></asp:Label>
            <asp:TextBox CssClass="form-control" runat="server" ID="txtname"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="rfvname" ControlToValidate="txtname" ErrorMessage="Name is required" ForeColor="Red" ></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <asp:Label ID="lblemail" runat="server" Text="Email: "></asp:Label>
            <asp:TextBox CssClass="form-control" runat="server" ID="txtemail"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="rfvemail" ControlToValidate="txtemail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
        
                   <asp:RegularExpressionValidator runat="server" ID="rfvregemail" ControlToValidate="txtemail" ErrorMessage="Enter correct email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
</div>
        <div class="form-group">
            <asp:Label ID="lblrpassword" runat="server" Text="Password: "></asp:Label>
            <asp:TextBox CssClass="form-control" runat="server" ID="txtrpassword" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID ="rfvpassword" ControlToValidate="txtrpassword" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <asp:Label ID="lblrepassword" runat="server" Text="Re-Password: "></asp:Label>
            <asp:TextBox CssClass="form-control" runat="server" ID="txtrepassword" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID ="rfvrepassword" ControlToValidate="txtrepassword" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <asp:Button CssClass="btn btn-primary" runat="server" ID="btnregister" Text="Register" OnClick="btnregister_Click"></asp:Button>
            <asp:HyperLink CssClass="back-link" runat="server" Text="Login" NavigateUrl="~/Login.aspx"></asp:HyperLink>
        </div>
    </div>
</div>
        <asp:ValidationSummary CssClass="validation-summary" ID="ValidationSummary1" runat="server" DisplayMode="BulletList" ShowSummary="true" HeaderText="Errors:" />

</asp:Content>
