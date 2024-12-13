<%@ Page Title="Search Course" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchCourse.aspx.cs" Inherits="WebApplication9.SearchCourse" %>

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

        .results-container {
            max-width: 600px;
            margin: 20px auto;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 15px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .results-container .course-card {
            margin-bottom: 15px;
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }

        .results-container .course-card:last-child {
            border-bottom: none;
        }

        .results-container h3 {
            color: #007BFF;
            margin-bottom: 5px;
        }

        .results-container p {
            margin: 0;
            color: #555;
        }
    </style>

    <header>
        <h1>Search Courses</h1>
    </header>

    <div class="form-container">
        <asp:TextBox ID="SearchTextBox" runat="server" CssClass="form-control" Placeholder="Enter part of the course name"></asp:TextBox>
        <asp:Button ID="SearchButton" runat="server" Text="Search" CssClass="btn-primary" OnClick="SearchButton_Click" />
    </div>

    <div class="results-container">
        <asp:Repeater ID="CoursesRepeater" runat="server">
            <ItemTemplate>
                <div class="course-card">
                    <h3><%# Eval("Title") %></h3>
                    <p><strong>Description:</strong> <%# Eval("Description") %></p>
                    <p><strong>Duration:</strong> <%# Eval("Duration") %> hours</p>
                    <p><strong>Price:</strong> $<%# Eval("Price") %></p>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
