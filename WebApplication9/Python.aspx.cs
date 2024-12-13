using System;
using System.Collections.Generic;

namespace WebApplication9
{
    public partial class Python : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCourseDetails();
            }
        }

        private void LoadCourseDetails()
        {
            // Example course details
            string courseTitle = "Python Programming";
            string instructor = "Bob Johnson";
            int courseDuration = 30; // in hours
            int lectureCount = 15;

            // Lecture details
            var lectures = new List<Lecture>
            {
                new Lecture { LectureTitle = "Introduction to Python", LectureDuration = 50 },
                new Lecture { LectureTitle = "Python Variables and Data Types", LectureDuration = 40 },
                new Lecture { LectureTitle = "Control Structures", LectureDuration = 55 },
                new Lecture { LectureTitle = "Functions in Python", LectureDuration = 60 },
                new Lecture { LectureTitle = "File Handling", LectureDuration = 45 },
                new Lecture { LectureTitle = "Object-Oriented Programming", LectureDuration = 70 },
                new Lecture { LectureTitle = "Error and Exception Handling", LectureDuration = 40 },
                new Lecture { LectureTitle = "Python Modules and Packages", LectureDuration = 50 },
                new Lecture { LectureTitle = "Working with APIs", LectureDuration = 65 },
                new Lecture { LectureTitle = "Data Visualization", LectureDuration = 75 },
                new Lecture { LectureTitle = "Python for Data Analysis", LectureDuration = 80 },
                new Lecture { LectureTitle = "Python for Web Development", LectureDuration = 90 },
                new Lecture { LectureTitle = "Introduction to Machine Learning with Python", LectureDuration = 85 },
                new Lecture { LectureTitle = "Advanced Topics in Python", LectureDuration = 100 },
                new Lecture { LectureTitle = "Final Project Overview", LectureDuration = 120 }
            };

            // Bind course details to labels
            CourseTitleLabel.Text = courseTitle;
            InstructorLabel.Text = instructor;
            CourseDurationLabel.Text = courseDuration.ToString();
            LectureCountLabel.Text = lectureCount.ToString();

            // Bind lecture details to Repeater
            LectureRepeater.DataSource = lectures;
            LectureRepeater.DataBind();
        }

        public class Lecture
        {
            public string LectureTitle { get; set; }
            public int LectureDuration { get; set; } // in minutes
        }
    }
}
