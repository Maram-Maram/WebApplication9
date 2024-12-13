using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace WebApplication9
{
    public partial class AddCourse : Page
    {
        // Connection string to your database
        private readonly string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\user\source\repos\WebApplication9\WebApplication9\App_Data\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            // Optional: Logic to execute when the page loads
        }

        protected void AddCourseButton_Click(object sender, EventArgs e)
        {
            // Retrieve input values from form controls
            string title = TitleTextBox.Text.Trim();
            string description = DescriptionTextBox.Text.Trim();
            string durationText = DurationTextBox.Text.Trim();
            string priceText = PriceTextBox.Text.Trim();
            string teacherIDText = TeacherIDTextBox.Text.Trim();

            // Validate inputs
            if (string.IsNullOrWhiteSpace(title) || string.IsNullOrWhiteSpace(durationText) || string.IsNullOrWhiteSpace(priceText) || string.IsNullOrWhiteSpace(teacherIDText))
            {
                ShowMessage("Please fill in all required fields.");
                return;
            }

            if (!int.TryParse(durationText, out int duration))
            {
                ShowMessage("Duration must be a valid number.");
                return;
            }

            if (!decimal.TryParse(priceText, out decimal price))
            {
                ShowMessage("Price must be a valid decimal number.");
                return;
            }

            if (!int.TryParse(teacherIDText, out int teacherID))
            {
                ShowMessage("Teacher ID must be a valid number.");
                return;
            }

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();

                    // SQL query to insert a new course
                    string query = "INSERT INTO Courses (Title, Description, Duration, Price, TeacherID) VALUES (@Title, @Description, @Duration, @Price, @TeacherID)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Title", title);
                        cmd.Parameters.AddWithValue("@Description", string.IsNullOrEmpty(description) ? (object)DBNull.Value : description);
                        cmd.Parameters.AddWithValue("@Duration", duration);
                        cmd.Parameters.AddWithValue("@Price", price);
                        cmd.Parameters.AddWithValue("@TeacherID", teacherID);

                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            ShowMessage("Course added successfully!");
                            ClearFields();
                        }
                        else
                        {
                            ShowMessage("Failed to add course.");
                        }
                    }
                }
                catch (Exception ex)
                {
                    ShowMessage($"Error: {ex.Message}");
                }
            }
        }

        /// <summary>
        /// Clears input fields after successful submission.
        /// </summary>
        private void ClearFields()
        {
            TitleTextBox.Text = string.Empty;
            DescriptionTextBox.Text = string.Empty;
            DurationTextBox.Text = string.Empty;
            PriceTextBox.Text = string.Empty;
            TeacherIDTextBox.Text = string.Empty;
        }

        /// <summary>
        /// Displays a message to the user in a JavaScript alert.
        /// </summary>
        private void ShowMessage(string message)
        {
            string script = $"<script>alert('{message.Replace("'", "\\'")}');</script>";
            Response.Write(script);
        }
    }
}
