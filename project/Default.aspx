<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="project._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        /* Apply basic styles to the main sections */
main {
    padding: 20px;
}

section {
    margin-bottom: 30px;
}

h1, h2 {
    color: #333;
}

p {
    color: #555;
}

/* Button styles */
.btn {
    display: inline-block;
    padding: 10px 20px;
    border: 1px solid #007bff; /* blue color */
    border-radius: 5px;
    text-decoration: none;
    color: #007bff;
}

.btn.btn-default {
    border-color: #555;
    color: #555;
}

.btn-primary {
    background-color: #007bff;
    color: #fff;
}

/* Button hover styles */
.btn:hover {
    background-color: #0056b3; /* darker blue color */
    border-color: #0056b3;
    color: #fff;
}

.btn.btn-default:hover {
    background-color: #999; /* darker gray color */
    border-color: #999;
    color: #fff;
}

        .auto-style1 {
            width: 895px;
            height: 509px;
            margin-left: 212px;
        }

    </style>

  <main>
    <section class="row" aria-labelledby="bookingTitle">
        <h1 id="bookingTitle">
            <img alt="" class="auto-style1" src="Image/LT_471_(LTZ_1471)_Arriva_London_New_Routemaster_(19522859218).jpg" /></h1>
    </section>
</main>



</asp:Content>
