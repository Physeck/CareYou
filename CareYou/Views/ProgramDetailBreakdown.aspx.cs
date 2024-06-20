using CareYou.Controller;
using CareYou.Handler;
using CareYou.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareYou.Views
{
    public partial class ProgramDetailBreakdown : System.Web.UI.Page
    {
        public bool deleteClicked;
        public bool withdrawClicked;
        protected void Page_Load(object sender, EventArgs e)
        {
            int programId = Convert.ToInt32(Request.QueryString["id"]);
            Program program = ProgramHandler.getProgramById(programId);
            User user = (User)Session["User"];
            if (!IsPostBack)
            {
                deleteClicked = false;
                withdrawClicked = false;
            }
            if(program != null /* && ProgramController.isOwner(programId, user.UserID) */)
            {
                editBtn.Visible = true;
                withdrawBtn.Visible = true;
                deleteBtn.Visible = true;
                titleLb.Text = program.ProgramTitle;
                raisedLb.Text = string.Format("{0:N0}", program.ProgramRaised);
                targetLb.Text = string.Format("{0:N0}", program.ProgramTarget);
                progressBar.Style["width"] = ProgramHandler.getProgramProgress(programId) + "%";

            }
            else
            {
                editBtn.Visible = false;
                withdrawBtn.Visible = false;
                deleteBtn.Visible = false;
            }
        }

        protected void editBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditProgramDetails.aspx?id=" + Request.QueryString["id"]);
        }

        protected void withdrawBtn_Click(object sender, EventArgs e)
        {

        }

        protected void deleteBtn_Click(object sender, EventArgs e)
        {
            deleteClicked = true;
        }
    }
}