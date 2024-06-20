using CareYou.Handler;
using CareYou.Model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareYou.Views
{
    public partial class EditProgramDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int programId = Convert.ToInt32(Request.QueryString["id"]);
            Program program = ProgramHandler.getProgramById(programId);
            if(program != null && !IsPostBack)
            {
                TitleLb.Text = program.ProgramTitle;
                TopicLb.Text = program.ProgramTopic;
                descTb.Text = program.ProgramDesc;
                targetTb.Text = program.ProgramTarget.ToString();
                DateTime deadline = program.EndDate;
                dateTb.Text = deadline.ToString("yyyy-MM-dd");
                imageboxLb.Text = program.ProgramImage;
            }

        }

        protected void sendreqBtn_Click(object sender, EventArgs e)
        {
            String title = TitleLb.Text;
            String topic = TopicLb.Text;
            String desc = descTb.Text;
            int target = Convert.ToInt32(targetTb.Text);
            DateTime deadline = Convert.ToDateTime(dateTb.Text);
            HttpPostedFile file = InsertImage.PostedFile;
            // String filename = Path.GetFileName(file.FileName);
        }

        protected void BackBtn_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ProgramDetailBreakdown.aspx?id=" + Request.QueryString["id"]);
        }
    }
}