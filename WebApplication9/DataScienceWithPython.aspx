<%@ Page Title="Data Science with Python - Course Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Course_Details.aspx.cs" Inherits="EducationalPlatform.Course_Details" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }

        header {
            background-color: #17a2b8;
            color: white;
            padding: 20px;
            text-align: center;
        }

        .course-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
            margin-top: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .course-container img {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
            margin-bottom: 20px;
        }

        .course-details {
            text-align: center;
        }

        .course-details h1 {
            color: #17a2b8;
        }

        .course-details p {
            margin: 10px 0;
            font-size: 1rem;
            color: #555;
        }

        .back-btn {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #17a2b8;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 1rem;
        }

        .back-btn:hover {
            background-color: #138496;
        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
            margin-top: 20px;
        }

        iframe {
            width: 100%;
            max-width: 560px;
            height: 315px;
            margin-bottom: 20px;
            border: none;
            border-radius: 8px;
        }
    </style>

    <!-- Header -->
    <header>
        <h1>Data Science with Python</h1>
    </header>

    <!-- Course Details Section -->
    <div class="course-container">
        <!-- YouTube Video -->
        <iframe src="https://www.youtube.com/embed/your-video-id?autoplay=1"
                title="Data Science with Python Course Video"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen>
        </iframe>

        <!-- Course Image -->
        <asp:Image ID="CourseImage" runat="server" CssClass="course-img" ImageUrl="~/images/data-science-with-python.jpg" AlternateText="Data Science with Python" />

        <div class="course-details">
            <h1>Course: Data Science with Python</h1>
            <p><strong>Instructor:</strong> <asp:Label ID="InstructorLabel" runat="server" Text="Charlie Brown"></asp:Label></p>
            <p><strong>Number of Lectures:</strong> <asp:Label ID="LecturesLabel" runat="server" Text="18"></asp:Label></p>
            <p><strong>Price:</strong> <asp:Label ID="PriceLabel" runat="server" Text="$299"></asp:Label></p>
            <h2>Lecture Details:</h2>
            <ul>
                <asp:Repeater ID="LectureList" runat="server">
                    <ItemTemplate>
                        <li><%# Eval("LectureTitle") %></li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>

            <!-- Back Button -->
            <asp:HyperLink ID="BackLink" runat="server" NavigateUrl="~/Courses.aspx" CssClass="back-btn">Back to Courses</asp:HyperLink>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Educational Platform. All Rights Reserved.</p>
    </footer>
</asp:Content>
