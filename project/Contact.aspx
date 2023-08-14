<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="project.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<style>
    h1{
        text-align:center;
    }
</style>
    <main aria-labelledby="title">
        <h1>Contact US</h1>
        <address>
            <h3>Address</h3>
            Fawara Chowk, Circular<br />
            Road, Gujrat Pakistan<br />
            <abbr title="Phone">Phone:</abbr>
            0349-0028213
        </address>

        <address>
            <strong>Support:</strong>   <a href="mailto:busnow@gmail.com">Support@Busnow.com</a><br />
            <strong>Marketing:</strong> <a href="mailto:busnow">Marketing@Busnow.com</a>
        </address>
    </main>
</asp:Content>
