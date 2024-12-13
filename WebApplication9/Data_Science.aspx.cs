using System;
using System.Collections.Generic;

namespace WebApplication9
{
    public partial class Data_Science : System.Web.UI.Page
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
            string courseTitle = "Data Science with Python";
            string instructor = "Charlie Brown";
            int courseDuration = 36; // in hours
            int lectureCount = 18;

            // Lecture details
            var lectures = new List<Lecture>
            {
                new Lecture { LectureTitle = "Introduction to Data Science", LectureDuration = 60 },
                new Lecture { LectureTitle = "Python for Data Analysis", LectureDuration = 75 },
                new Lecture { LectureTitle = "Data Wrangling Techniques", LectureDuration = 50 },
                new Lecture { LectureTitle = "Exploratory Data Analysis", LectureDuration = 70 },
                new Lecture { LectureTitle = "Data Visualization with Matplotlib", LectureDuration = 55 },
                new Lecture { LectureTitle = "Data Visualization with Seaborn", LectureDuration = 60 },
                new Lecture { LectureTitle = "Introduction to Machine Learning", LectureDuration = 80 },
                new Lecture { LectureTitle = "Supervised Learning Algorithms", LectureDuration = 85 },
                new Lecture { LectureTitle = "Unsupervised Learning Algorithms", LectureDuration = 65 },
                new Lecture { LectureTitle = "Model Evaluation Techniques", LectureDuration = 75 },
                new Lecture { LectureTitle = "Data Preprocessing", LectureDuration = 60 },
                new Lecture { LectureTitle = "Introduction to Neural Networks", LectureDuration = 90 },
                new Lecture { LectureTitle = "Deep Learning Basics", LectureDuration = 100 },
                new Lecture { LectureTitle = "Handling Big Data", LectureDuration = 85 },
                new Lecture { LectureTitle = "Data Pipelines", LectureDuration = 70 },
                new Lecture { LectureTitle = "Working with APIs", LectureDuration = 60 },
                new Lecture { LectureTitle = "Advanced Topics in Data Science", LectureDuration = 95 },
                new Lecture { LectureTitle = "Capstone Project", LectureDuration = 120 }
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
