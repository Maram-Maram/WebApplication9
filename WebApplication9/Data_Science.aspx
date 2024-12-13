<%@ Page Title="Data Science with Python" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Data_Science.aspx.cs" Inherits="WebApplication9.Data_Science" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .course-details-container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: #f9f9f9;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .course-details-header {
            text-align: center;
            margin-bottom: 20px;
        }
        .course-details-header h1 {
            color: #007BFF;
            margin-bottom: 10px;
        }
        .course-details-header p {
            font-size: 1.2rem;
            color: #555;
        }
        .course-details-section {
            margin-bottom: 20px;
        }
        .course-details-section h2 {
            color: #333;
            margin-bottom: 10px;
        }
        .course-details-section p {
            font-size: 1rem;
            color: #555;
        }
        .lecture-list {
            margin-top: 10px;
            padding-left: 20px;
        }
        .lecture-list li {
            margin-bottom: 5px;
        }
        .video-container {
            text-align: center;
            margin: 20px 0;
        }
        .video-container iframe {
            width: 100%;
            max-width: 600px;
            height: 315px;
            border: none;
        }
    </style>

    <div class="course-details-container">
        <div class="course-details-header">
            <h1><asp:Label ID="CourseTitleLabel" runat="server" Text=""></asp:Label></h1>
            <p>Instructor: <asp:Label ID="InstructorLabel" runat="server" Text=""></asp:Label></p>
        </div>

        <div class="video-container">
            <h2>Course Video</h2>
            <iframe src="https://youtu.be/eWRfhZUzrAc" allowfullscreen></iframe>
        </div>

        <div class="course-details-section">
            <h2>Course Duration</h2>
            <p>Duration: <asp:Label ID="CourseDurationLabel" runat="server" Text=""></asp:Label> hours</p>
        </div>

        <div class="course-details-section">
            <h2>Number of Lectures</h2>
            <p>Total Lectures: <asp:Label ID="LectureCountLabel" runat="server" Text=""></asp:Label></p>
        </div>

        <div class="course-details-section">
            <h2>Lecture Details</h2>
            <ul class="lecture-list">
                <asp:Repeater ID="LectureRepeater" runat="server">
                    <ItemTemplate>
                        <li><%# Eval("LectureTitle") %> - Duration: <%# Eval("LectureDuration") %> minutes</li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>
</asp:Content>
