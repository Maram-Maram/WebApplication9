using System;
using System.Web.UI;

namespace WebApplication9
{
    public partial class login1 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Logic for Page Load (if needed)
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            // Access the UsernameTextBox and PasswordTextBox controls
            string username = UsernameTextBox.Text;
            string password = PasswordTextBox.Text;

            // Validate credentials (example logic)
            if (username == "admin" && password == "123")
            {
                // Redirect to dashboard if successful
                Response.Redirect("ControlPanal.aspx");
            }
            else
            {
                // Show error message
                ErrorMessage.Text = "Invalid username or password.";
            }
        }
    }
}
