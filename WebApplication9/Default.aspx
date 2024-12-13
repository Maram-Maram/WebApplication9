
<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication9._Default" %>

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

        .features-container {
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            max-width: 800px;
            margin: 20px auto;
        }

        .features-container ul {
            list-style-type: none;
            padding: 0;
        }

        .features-container ul li {
            margin-bottom: 10px;
            font-size: 1rem;
            color: #555;
        }

        .images-container {
            max-width: 800px;
            margin: 20px auto;
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
            justify-content: center;
        }

        .images-container img {
            max-width: 200px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .btn-container {
            text-align: center;
            margin-top: 20px;
        }

        .btn-primary {
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        footer {
            text-align: center;
            margin-top: 30px;
            padding: 10px;
            background-color: #333;
            color: white;
        }
    </style>

    <!-- Header Section -->
    <header>
        <h1>Welcome to Our Educational Platform</h1>
        <p>Your journey to knowledge starts here!</p>
    </header>

    <!-- Features Section -->
    <section class="features-container">
        <h2>Why Choose Us?</h2>
        <ul>
            <li>✅ <strong>Expert Instructors:</strong> Courses taught by professionals with industry experience.</li>
            <li>✅ <strong>Interactive Learning:</strong> Engage in live sessions and discussions.</li>
            <li>✅ <strong>Affordable Courses:</strong> High-quality education at competitive prices.</li>
            <li>✅ <strong>Lifetime Access:</strong> Learn at your own pace with unlimited course access.</li>
            <li>✅ <strong>Comprehensive Materials:</strong> Gain access to study guides, quizzes, and assignments.</li>
        </ul>
    </section>

    <!-- Images Section -->
    <section class="images-container">
        <img src="/images/learning-1.jpg" alt="Learning Programming">
        <img src="/images/learning-2.jpg" alt="Live Learning Session">
        <img src="/images/learning-3.jpg" alt="Earned Certificates">
    </section>

    <!-- Call to Action -->
    <div class="btn-container">
        <a href="/Course.aspx" class="btn-primary">Explore Courses</a>
    </div>

    <!-- Footer -->
   
</asp:Content>