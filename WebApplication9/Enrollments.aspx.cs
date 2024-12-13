using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace WebApplication9
{
    public partial class AddEnrollment : Page
    {
        private readonly string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\user\source\repos\WebApplication9\WebApplication9\App_Data\Database1.mdf;Integrated Security=True";

        protected void AddEnrollmentButton_Click(object sender, EventArgs e)
        {
            string courseIDText = CourseIDTextBox.Text.Trim();
            string studentIDText = StudentIDTextBox.Text.Trim();

            if (string.IsNullOrWhiteSpace(courseIDText) || string.IsNullOrWhiteSpace(studentIDText))
            {
                ShowMessage("Please fill in all required fields.");
                return;
            }

            if (!int.TryParse(courseIDText, out int courseID) || !int.TryParse(studentIDText, out int studentID))
            {
                ShowMessage("Course ID and Student ID must be valid numbers.");
                return;
            }

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();
                    string query = "INSERT INTO Enrollments (CourseID, StudentID) VALUES (@CourseID, @StudentID)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@CourseID", courseID);
                        cmd.Parameters.AddWithValue("@StudentID", studentID);

                        cmd.ExecuteNonQuery();
                        ShowMessage("Enrollment added successfully!");
                        ClearFields();
                    }
                }
                catch (Exception ex)
                {
                    ShowMessage($"Error: {ex.Message}");
                }
            }
        }

        private void ClearFields()
        {
            CourseIDTextBox.Text = string.Empty;
            StudentIDTextBox.Text = string.Empty;
        }

        private void ShowMessage(string message)
        {
            string script = $"<script>alert('{message}');</script>";
            Response.Write(script);
        }
    }
}
