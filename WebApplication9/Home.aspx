<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication9.Home" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Main Menu -->
    <nav style="background-color: #f8f9fa; padding: 10px; border-bottom: 1px solid #ddd;">
        <ul style="list-style: none; margin: 0; padding: 0; display: flex; gap: 20px;">
            <li><a href="Home.aspx" style="text-decoration: none; font-weight: bold;">Home</a></li>
            <li><a href="Contact.aspx" style="text-decoration: none; font-weight: bold;">Control Panel</a></li>
            <li><a href="Search.aspx" style="text-decoration: none; font-weight: bold;">Search</a></li>
            <li><a href="About.aspx" style="text-decoration: none; font-weight: bold;">About Us</a></li>
        </ul>
    </nav>

    <!-- Home Page Content -->
    <main style="padding: 20px;">
        <h1>Welcome to the Home Page</h1>
        <p>
            This is the homepage of your website. From here, you can navigate to various sections using the menu above.
        </p>
    </main>
</asp:Content>
