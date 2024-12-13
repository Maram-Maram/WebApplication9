using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace WebApplication9
{
    public partial class AddTeacher : Page
    {
        // Connection string to your database
        private readonly string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\user\source\repos\WebApplication9\WebApplication9\App_Data\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            // Optional: Logic on page load
        }

        protected void AddTeacherButton_Click(object sender, EventArgs e)
        {
            // Retrieve input values
            string userIDText = UserIDTextBox.Text.Trim();
            string name = NameTextBox.Text.Trim();
            string email = EmailTextBox.Text.Trim();
            string phone = PhoneTextBox.Text.Trim();

            // Validate inputs
            if (string.IsNullOrWhiteSpace(userIDText) || string.IsNullOrWhiteSpace(name) || string.IsNullOrWhiteSpace(email) || string.IsNullOrWhiteSpace(phone))
            {
                ShowMessage("All fields are required.");
                return;
            }

            if (!int.TryParse(userIDText, out int userID))
            {
                ShowMessage("User ID must be a valid number.");
                return;
            }

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();

                    // SQL query to insert a new teacher
                    string query = "INSERT INTO Teacher (UserID, Name, Email, Phone) VALUES (@UserID, @Name, @Email, @Phone)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        // Add parameters to prevent SQL injection
                        cmd.Parameters.AddWithValue("@UserID", userID);
                        cmd.Parameters.AddWithValue("@Name", name);
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Phone", phone);

                        // Execute the query
                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            ShowMessage("Teacher added successfully!");
                            ClearFields();
                        }
                        else
                        {
                            ShowMessage("Failed to add teacher.");
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
            UserIDTextBox.Text = string.Empty;
            NameTextBox.Text = string.Empty;
            EmailTextBox.Text = string.Empty;
            PhoneTextBox.Text = string.Empty;
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
