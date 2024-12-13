<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication9.About" %>

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

        .about-container {
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: 20px auto;
        }

        .about-container h2 {
            text-align: center;
            color: #007BFF;
            margin-bottom: 15px;
        }

        .about-container p {
            font-size: 1rem;
            color: #555;
            line-height: 1.6;
            margin-bottom: 15px;
        }

        .btn-primary {
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            display: block;
            margin: 20px auto;
            text-align: center;
            text-decoration: none;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>

    <!-- Header -->
    <header>
        <h1>About Us</h1>
        <p>Learn more about our mission and values.</p>
    </header>

    <!-- About Section -->
    <section class="about-container">
        <h2>Who We Are</h2>
        <p>
            We are a dedicated team of professionals committed to providing high-quality education and learning opportunities for everyone. Our platform is designed to help students and professionals achieve their goals through comprehensive courses, expert instructors, and interactive learning experiences.
        </p>
        <h2>Our Mission</h2>
        <p>
            Our mission is to make education accessible and affordable for all. We aim to empower learners with the skills and knowledge they need to succeed in their personal and professional lives.
        </p>
        <h2>Contact Us</h2>
        <p>
            Have questions or need assistance? Reach out to our support team at <strong>support@educationalplatform.com</strong>.
        </p>
        <a href="/Contact.aspx" class="btn-primary">Contact Us</a>
    </section>
</asp:Content>
