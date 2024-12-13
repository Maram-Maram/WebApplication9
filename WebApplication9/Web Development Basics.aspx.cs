using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class Web_Development_Basics : System.Web.UI.Page
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
            string courseTitle = "Web Development Basics";
            string instructor = "Alice Smith";
            int courseDuration = 24; // in hours
            int lectureCount = 12;

            // Lecture details
            var lectures = new List<Lecture>
            {
                new Lecture { LectureTitle = "Introduction to HTML", LectureDuration = 45 },
                new Lecture { LectureTitle = "CSS Basics", LectureDuration = 60 },
                new Lecture { LectureTitle = "Advanced CSS", LectureDuration = 50 },
                new Lecture { LectureTitle = "JavaScript Fundamentals", LectureDuration = 70 },
                new Lecture { LectureTitle = "DOM Manipulation", LectureDuration = 55 },
                new Lecture { LectureTitle = "Responsive Design", LectureDuration = 65 },
                new Lecture { LectureTitle = "CSS Frameworks", LectureDuration = 50 },
                new Lecture { LectureTitle = "Introduction to Bootstrap", LectureDuration = 60 },
                new Lecture { LectureTitle = "Flexbox and Grid", LectureDuration = 75 },
                new Lecture { LectureTitle = "HTML Forms", LectureDuration = 40 },
                new Lecture { LectureTitle = "JavaScript and APIs", LectureDuration = 85 },
                new Lecture { LectureTitle = "Final Project Overview", LectureDuration = 90 }
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