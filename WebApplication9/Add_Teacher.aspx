<%@ Page Title="Add Teacher" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddTeacher.aspx.cs" Inherits="WebApplication9.AddTeacher" %>

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
    </style>

    <!-- Header -->
    <header>
        <h1>Add Teacher</h1>
        <p>Fill in the details to add a new teacher to the system.</p>
    </header>

    <!-- Form Section -->
    <section>
        <div class="form-container">
            <asp:Panel runat="server" CssClass="add-teacher-form">
                <!-- User ID -->
                <label for="UserIDTextBox">User ID:</label>
                <asp:TextBox ID="UserIDTextBox" runat="server" CssClass="form-control" Placeholder="Enter User ID" />
                <br />

                <!-- Name -->
                <label for="NameTextBox">Name:</label>
                <asp:TextBox ID="NameTextBox" runat="server" CssClass="form-control" Placeholder="Enter Name" />
                <br />

                <!-- Email -->
                <label for="EmailTextBox">Email:</label>
                <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control" TextMode="Email" Placeholder="Enter Email" />
                <br />

                <!-- Phone -->
                <label for="PhoneTextBox">Phone:</label>
                <asp:TextBox ID="PhoneTextBox" runat="server" CssClass="form-control" TextMode="SingleLine" Placeholder="Enter Phone Number" />
                <asp:RegularExpressionValidator 
                    ID="PhoneValidator" 
                    runat="server" 
                    ControlToValidate="PhoneTextBox" 
                    ErrorMessage="Invalid phone number format." 
                    ValidationExpression="^\+?\d{10,15}$" 
                    ForeColor="Red" />
                <br />

                <!-- Submit Button -->
                <asp:Button ID="AddTeacherButton" runat="server" Text="Add Teacher" CssClass="btn-primary" OnClick="AddTeacherButton_Click" />
            </asp:Panel>
        </div>
    </section>
</asp:Content>
