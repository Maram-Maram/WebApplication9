<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication9.Contact" %>

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

   
</style>

<!-- Header -->
<header>
    <h1>Quick Actions</h1>
   
</header>

    
    
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        
      <center>
            
        <div>
            
            <asp:Button ID="AddTeacherButton" runat="server" Text="Add Teacher" PostBackUrl="~/Add_Teacher.aspx" />
            <asp:Button ID="AddStudentButton" runat="server" Text="Add Student" PostBackUrl="~/Add_student.aspx" />
            <asp:Button ID="AddCourseButton" runat="server" Text="Add Course" PostBackUrl="~/Add_Course.aspx" />
            <asp:Button ID="AddEnrollmentButton" runat="server" Text="Add Enrollment" PostBackUrl="~/Enrollments.aspx" />
        </div>
          </center>
    </main>
</asp:Content>
