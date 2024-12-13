
<%@ Page Title="Add Course" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddCourse.aspx.cs" Inherits="WebApplication9.AddCourse" %>

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

        .form-container input, .form-container textarea {
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
        <h1>Add Course</h1>
        <p>Fill in the details to add a new course to the system.</p>
    </header>

    <!-- Form Section -->
    <section>
        <div class="form-container">
            <asp:Panel runat="server" CssClass="add-course-form">
                <label for="TitleTextBox">Title:</label>
                <asp:TextBox ID="TitleTextBox" runat="server" CssClass="form-control" Placeholder="Enter Course Title" />
                <br />
                <label for="DescriptionTextBox">Description:</label>
                <asp:TextBox ID="DescriptionTextBox" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" Placeholder="Enter Course Description" />
                <br />
                <label for="DurationTextBox">Duration (hours):</label>
                <asp:TextBox ID="DurationTextBox" runat="server" CssClass="form-control" TextMode="Number" Placeholder="Enter Duration" />
                <br />
                <label for="PriceTextBox">Price (USD):</label>
                <asp:TextBox ID="PriceTextBox" runat="server" CssClass="form-control" TextMode="Number" Placeholder="Enter Price" />
                <br />
                <label for="TeacherIDTextBox">Teacher ID:</label>
                <asp:TextBox ID="TeacherIDTextBox" runat="server" CssClass="form-control" Placeholder="Enter Teacher ID" />
                <br />
                <asp:Button ID="AddCourseButton" runat="server" Text="Add Course" CssClass="btn-primary" OnClick="AddCourseButton_Click" />
            </asp:Panel>
        </div>
    </section>
</asp:Content>
