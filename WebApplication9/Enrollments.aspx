<%@ Page Title="Add Enrollment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Enrollments.aspx.cs" Inherits="WebApplication9.AddEnrollment" %>

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

    <header>
        <h1>Add Enrollment</h1>
        <p>Enroll a student in a course by filling out the details below.</p>
    </header>

    <section>
        <div class="form-container">
            <asp:Panel runat="server" CssClass="add-enrollment-form">
                <label for="CourseIDTextBox">Course ID:</label>
                <asp:TextBox ID="CourseIDTextBox" runat="server" CssClass="form-control" Placeholder="Enter Course ID" />
                <br />
                <label for="StudentIDTextBox">Student ID:</label>
                <asp:TextBox ID="StudentIDTextBox" runat="server" CssClass="form-control" Placeholder="Enter Student ID" />
                <br />
                <asp:Button ID="AddEnrollmentButton" runat="server" Text="Add Enrollment" CssClass="btn-primary" OnClick="AddEnrollmentButton_Click" />
            </asp:Panel>
        </div>
    </section>
</asp:Content>
