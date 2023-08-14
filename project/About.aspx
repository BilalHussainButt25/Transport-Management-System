<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="project.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        h2{
            text-align:center;
        }
    </style>
    <main aria-labelledby="title">
        <h2>About US</h2>
        <br />
           <asp:Image ID="ImageID" runat="server" ImageUrl="~/Image/Bus.jpeg" ImageAlign="Right" Height="300" Width="400" />
   
        <p>Welcome to TicketMaster, the online ticket booking system that lets you book tickets for your favorite events in a fast and easy way.TicketMaster is more than just
a ticket booking system. We are also a platform that connects you with other fans who share your passion and interests. You can join our online community, where you can chat with other users, share your reviews and ratings, get recommendations and suggestions, and discover new events that suit your taste. You can also follow us on social media, where we post the latest news and updates about our events, as well as exclusive offers and discounts.

We value your feedback and suggestions, and we are always ready to help you with any issues or queries you may have. You can contact us through our website, email, phone, or chat support. We also have a FAQ section where you can find answers to some of the most common questions.

Thank you for choosing TicketMaster as your online ticket booking system. We hope you enjoy our service and have a great time at our events.</p>
     </main>
</asp:Content>
