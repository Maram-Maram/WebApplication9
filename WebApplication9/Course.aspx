<%@ Page Title="Courses" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="EducationalPlatform.Courses" %>

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

        .courses-container {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
            padding: 20px;
        }

        .course-card {
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 15px;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s;
        }

        .course-card:hover {
            transform: scale(1.05);
        }

        .course-card h3 {
            margin: 10px 0;
            font-size: 1.1rem;
            color: #007BFF;
        }

        .course-card p {
            margin: 5px 0;
            font-size: 0.9rem;
            color: #555;
        }

        .course-card .btn-container {
            display: flex;
            justify-content: center;
            gap: 10px;
            margin-top: 10px;
        }

        .course-card .btn {
            font-size: 0.8rem;
            padding: 5px 10px;
            background-color: #007BFF;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            border: none;
        }

        .course-card .btn:hover {
            background-color: #0056b3;
        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
            margin-top: 20px;
        }
    </style>

    <!-- Header -->
    <header>
        <h1>Available Courses</h1>
        <p>Browse our wide range of courses and start learning today!</p>
    </header>

    <!-- Courses Grid -->
    <section class="courses-container">
        <asp:Repeater ID="CoursesRepeater" runat="server">
            <ItemTemplate>
                <div class="course-card">
                    <h3><%# Eval("Title") %></h3>
                    <p><strong>Instructor:</strong> <%# Eval("Instructor") %></p>
                    <p><strong>Lectures:</strong> <%# Eval("Lectures") %></p>
                    <div class="btn-container">
                        <asp:Button ID="EnrollButton" runat="server" Text="Enroll Now" CssClass="btn" PostBackUrl='<%# Eval("EnrollUrl") %>' />
                        <asp:Button ID="DetailsButton" runat="server" Text="View Details" CssClass="btn" PostBackUrl='<%# Eval("DetailsUrl") %>' />
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Educational Platform. All Rights Reserved.</p>
    </footer>
</asp:Content>
