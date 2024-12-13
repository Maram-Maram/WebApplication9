using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace WebApplication9
{
    public partial class SearchCourse : Page
    {
        // Correct connection string
            
        private readonly string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\user\source\repos\WebApplication9\WebApplication9\App_Data\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            string searchQuery = SearchTextBox.Text.Trim();

            if (string.IsNullOrEmpty(searchQuery))
            {
                // Clear the results if the search box is empty
                CoursesRepeater.DataSource = null;
                CoursesRepeater.DataBind();
                return;
            }

            // SQL query to fetch courses matching the search term
            string query = "SELECT Title, Description, Duration, Price FROM Courses WHERE Title LIKE @SearchQuery";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@SearchQuery", "%" + searchQuery + "%");

                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            da.Fill(dt);

                            // Bind data to the Repeater
                            CoursesRepeater.DataSource = dt;
                            CoursesRepeater.DataBind();
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Handle database errors
                    Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                }
            }
        }
    }
}
