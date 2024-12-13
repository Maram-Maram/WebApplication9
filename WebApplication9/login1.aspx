<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login1.aspx.cs" Inherits="WebApplication9.login1" %>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Login</h2>

        <!-- TextBox for Username -->
        <asp:TextBox ID="UsernameTextBox" runat="server" Placeholder="Username"></asp:TextBox><br />

        <!-- TextBox for Password -->
        <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" Placeholder="Password"></asp:TextBox><br />

        <!-- Login Button -->
        <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" /><br />

        <!-- Label for Error Message -->
        <asp:Label ID="ErrorMessage" runat="server" ForeColor="Red"></asp:Label>
    </form>
</body>
</html>
