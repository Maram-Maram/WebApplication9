using System;
using System.Collections.Generic;

namespace EducationalPlatform
{
    public partial class Courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCourses();
            }
        }

        private void BindCourses()
        {
            // Example course data
            var courses = new List<Course>
            {
            //    new Course { Title = "Web Development Basics", Instructor = "Alice Smith", Lectures = 12, EnrollUrl = "/Enrollments.aspx", DetailsUrl = "/Contact.aspx" },
              //  new Course { Title = "Micorsoft word", Instructor = "Alice Smith", Lectures = 12, EnrollUrl = "/Enrollments.aspx", DetailsUrl = "/Contact.aspx" },

                new Course { Title = "Web Development Basics", Instructor = "Alice Smith", Lectures = 12, EnrollUrl = "Enrollments.aspx", DetailsUrl = "Web Development Basics.aspx" },
                new Course { Title = "Python Programming", Instructor = "Bob Johnson", Lectures = 15, EnrollUrl = "Enrollments.aspx", DetailsUrl = "Python.aspx" },
                new Course { Title = "Data Science with Python", Instructor = "Charlie Brown", Lectures = 18, EnrollUrl = "Enrollments.aspx", DetailsUrl = "Data_Science.aspx" },
                new Course { Title = "Machine Learning Fundamentals", Instructor = "Diana Miller", Lectures = 20, EnrollUrl = "Enrollments.aspx", DetailsUrl = "/course-details/machine-learning-fundamentals" },
                new Course { Title = "Digital Marketing", Instructor = "Eve Adams", Lectures = 10, EnrollUrl = "Enrollments.aspx", DetailsUrl = "/course-details/digital-marketing" },
                new Course { Title = "Graphic Design", Instructor = "Franklin Lee", Lectures = 14, EnrollUrl = "Enrollments.aspx", DetailsUrl = "/course-details/graphic-design" },
                new Course { Title = "Video Editing Mastery", Instructor = "Grace Cooper", Lectures = 16, EnrollUrl = "Enrollments.aspx", DetailsUrl = "/course-details/video-editing" },
                new Course { Title = "Mobile App Development", Instructor = "Henry Taylor", Lectures = 22, EnrollUrl = "Enrollments.aspx", DetailsUrl = "/course-details/mobile-app" }
            };

            CoursesRepeater.DataSource = courses;
            CoursesRepeater.DataBind();
        }
    }

    public class Course
    {
        public string Title { get; set; }
        public string Instructor { get; set; }
        public int Lectures { get; set; }
        public string EnrollUrl { get; set; }
        public string DetailsUrl { get; set; }
    }
}
