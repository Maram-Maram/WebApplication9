<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="WebApplication9.AddUser" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .form-container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #f9f9f9;
        }

        .form-container h2 {
            text-align: center;
            color: #333;
        }

        .form-container label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .form-container input, .form-container select {
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
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            width: 100%;
        }

        .form-container .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Add New User</h2>
        <form id="form1" runat="server">
            <label for="UserNameTextBox">Username:</label>
            <asp:TextBox ID="UserNameTextBox" runat="server" CssClass="form-control" Placeholder="Enter Username"></asp:TextBox>
            <br />

            <label for="PasswordTextBox">Password:</label>
            <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" CssClass="form-control" Placeholder="Enter Password"></asp:TextBox>
            <br />

            <label for="UserRoleDropDown">User Role:</label>
            <asp:DropDownList ID="UserRoleDropDown" runat="server" CssClass="form-control">
                <asp:ListItem Text="Select Role" Value="" />
                <asp:ListItem Text="Teacher" Value="Teacher" />
                <asp:ListItem Text="Student" Value="Student" />
            </asp:DropDownList>
            <br />

            <asp:Button ID="AddUserButton" runat="server" Text="Add User" CssClass="btn-primary" OnClick="AddUserButton_Click" />
        </form>
    </div>
</body>
</html>
