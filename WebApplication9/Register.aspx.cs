using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace WebApplication9
{
    public partial class AddUser : System.Web.UI.Page
    {
        // Connection string pointing to the database
        private readonly string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\user\source\repos\WebApplication9\WebApplication9\App_Data\Database1.mdf;Integrated Security=True";
       // private readonly string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=Database1.mdf;Integrated Security=True";


        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void AddUserButton_Click(object sender, EventArgs e)
        {
            // Retrieve data from input fields
            string userName = UserNameTextBox.Text.Trim();
            string password = PasswordTextBox.Text.Trim();
            string userRole = UserRoleDropDown.SelectedValue;

            // Validate input
            if (string.IsNullOrWhiteSpace(userName) || string.IsNullOrWhiteSpace(password) || string.IsNullOrWhiteSpace(userRole))
            {
                Response.Write("<script>alert('All fields are required.');</script>");
                return;
            }

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();

                    // SQL query to insert a new user
                    string query = "INSERT INTO [User] (UserName, Password, UserRole) VALUES (@UserName, @Password, @UserRole)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        // Add parameters to prevent SQL injection
                        cmd.Parameters.AddWithValue("@UserName", userName);
                        cmd.Parameters.AddWithValue("@Password", password);
                        cmd.Parameters.AddWithValue("@UserRole", userRole);

                        // Execute the query
                        int rowsAffected = cmd.ExecuteNonQuery();

                        // Display success message
                        if (rowsAffected > 0)
                        {
                            Response.Write("<script>alert('User added successfully!');</script>");
                            ClearFields();
                        }
                        else
                        {
                            Response.Write("<script>alert('Failed to add user.');</script>");
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Handle exceptions
                    Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                }
            }
        }

        /// <summary>
        /// Clears input fields after a successful operation.
        /// </summary>
        private void ClearFields()
        {
            UserNameTextBox.Text = string.Empty;
            PasswordTextBox.Text = string.Empty;
            UserRoleDropDown.SelectedIndex = 0;
        }
    }
}
