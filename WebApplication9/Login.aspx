<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication9.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        header {
            text-align: center;
            background-color: #007BFF;
            color: white;
            padding: 20px;
        }

        .form-container {
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: 20px auto;
        }

        .form-container label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .form-container input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
        }

        .form-container .btn-primary {
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            width: 100%;
        }

        .form-container .btn-primary:hover {
            background-color: #0056b3;
        }

        .form-container .link {
            text-align: center;
            margin-top: 10px;
        }

        .form-container .link a {
            color: #007BFF;
            text-decoration: none;
        }

        .form-container .link a:hover {
            text-decoration: underline;
        }
    </style>

    <!-- Header -->
    <header>
        <h1>Login</h1>
        <p>Access your account to manage courses and enrollments.</p>
    </header>

    <!-- Form Section -->
    <section>
        <div class="form-container">
            <asp:Panel runat="server" CssClass="login-form">
                <!-- Username -->
                <label for="UsernameTextBox">Username:</label>
                <asp:TextBox ID="UsernameTextBox" runat="server" CssClass="form-control" Placeholder="Enter your username" />
                <br />

                <!-- Password -->
                <label for="PasswordTextBox">Password:</label>
                <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" CssClass="form-control" Placeholder="Enter your password" />
                <br />

                <!-- Submit Button -->
                <asp:Button ID="LoginButton" runat="server" Text="Login" CssClass="btn-primary" OnClick="LoginButton_Click" />
                <div class="link">
                    <asp:HyperLink ID="ForgotPasswordLink" NavigateUrl="~/ForgotPassword.aspx">Forgot Password?</asp:HyperLink>
                </div>
            </asp:Panel>
        </div>
    </section>
</asp:Content>
