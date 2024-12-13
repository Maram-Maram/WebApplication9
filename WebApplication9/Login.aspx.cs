using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;



namespace WebApplication9
{
    public partial class Login : Page
    {
        // Connection string to your database
        // private readonly string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Path\To\Database1.mdf;Integrated Security=True;Connect Timeout=30";
      //  private readonly string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\user\source\repos\WebApplication9\WebApplication9\App_Data\Database1.mdf;Integrated Security=True";
        // private readonly string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            // Logic on page load (if needed)
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            // Retrieve user inputs
            //string username = UsernameTextBox.Text.Trim();
            //string password = PasswordTextBox.Text.Trim();
            // Retrieve user inputs
            string username = UsernameTextBox.Text.Trim();
            string password = PasswordTextBox.Text.Trim();

            // Check username and password
            if (username == "admin" && password == "123")
            {
                // Redirect to an admin dashboard or another page
                Response.Redirect("ControlPanal.aspx");
            }
            else
            {
                // Show error message for invalid credentials
                ShowMessage("Invalid username or password.");
            }
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


        //    // Validate input
        //    if (string.IsNullOrWhiteSpace(username) || string.IsNullOrWhiteSpace(password))
        //    {
        //        ShowMessage("Username and Password are required.");
        //        return;
        //    }

//    using (SqlConnection conn = new SqlConnection(connectionString))
//    {
//        try
//        {
//            conn.Open();

//            // SQL query to validate user credentials
//            string query = "SELECT UserRole FROM [User] WHERE UserName = @UserName AND Password = @Password";

//            using (SqlCommand cmd = new SqlCommand(query, conn))
//            {
//                cmd.Parameters.AddWithValue("@UserName", username);
//                cmd.Parameters.AddWithValue("@Password", password);

//                object result = cmd.ExecuteScalar();

//                if (result != null)
//                {
//                    string userRole = result.ToString();

//                    // Redirect based on user role
//                    if (userRole == "Teacher")
//                    {
//                        Response.Redirect("TeacherDashboard.aspx");
//                    }
//                    else if (userRole == "Student")
//                    {
//                        Response.Redirect("StudentDashboard.aspx");
//                    }
//                    else
//                    {
//                        ShowMessage("Invalid role.");
//                    }
//                }
//                else
//                {
//                    ShowMessage("Invalid username or password.");
//                }
//            }
//        }
//        catch (Exception ex)
//        {
//            // Handle exceptions
//            ShowMessage($"Error: {ex.Message}");
//        }
//    }
//}



