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
    public partial class AdminProgramDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Program program = ProgramHandler.getProgramById(Convert.ToInt32(Request.QueryString["id"]));
            TopicTB.Text = program.ProgramTopic;
            TitleTB.Text = program.ProgramTitle;
            NameTB.Text = program.FundraiserName;
            BeneficiaryTB.Text = program.BeneficiaryName;
            descTB.Text = program.ProgramDesc;
            TypeDDL.SelectedValue = program.ProgramType;
            TypeDDL.Text = program.ProgramType;
            LocTB.Text = program.ProgramLoc;
            targetTb.Text = program.ProgramTarget.ToString();
            dateTb.Text = program.EndDate.ToString();
            imageboxLb.Text = program.ProgramImage;
            idImageBoxLb.Text = program.FundraiserNationalID;
        }

        protected void AccBtn_Click(object sender, EventArgs e)
        {
            ProgramHandler.acceptProgram(Convert.ToInt32(Request.QueryString["id"]));
            Response.Redirect("DashboardPage.aspx");
        }

        protected void RejectBtn_Click(object sender, EventArgs e)
        {
            ProgramHandler.deleteProgram(Convert.ToInt32(Request.QueryString["id"]));
            Response.Redirect("DashboardPage.aspx");
        }
    }
}