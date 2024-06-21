using CareYou.Handler;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareYou.Views
{
    public partial class FundraisePage : System.Web.UI.Page
    {
        static String programType;
        static String query;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                query = "";
                programType = "none";
                BindPrograms(programType, query);
            }
        }

        private void BindPrograms(String programType, String query)
        {
            int userId = Convert.ToInt32(Session["UserID"]);
            var allVerifiedPrograms = ProgramHandler.getAllVerifiedProgramsFromUserId(programType, query, userId);
            ProgramRepeater.DataSource = allVerifiedPrograms;
            ProgramRepeater.DataBind();
            var allPendingPrograms = ProgramHandler.getAllPendingProgramsFromUserId(programType, query, userId);
            PendingRepeater.DataSource = allPendingPrograms;
            PendingRepeater.DataBind();

        }
        /* protected void startfundraisingbtn_Click(object sender, EventArgs e)
        {

        } */

        protected void FundraiseBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateProgram.aspx");
        }

        protected void SearchBtn_Click(object sender, ImageClickEventArgs e)
        {
            query = SearchBar.Text;
            BindPrograms(programType, query);
        }

        protected void FilterDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (FilterDDL.SelectedValue == "none")
            {
                programType = "none";
                BindPrograms(programType, query);
            }
            else if (FilterDDL.SelectedValue == "project")
            {
                programType = "project";
                BindPrograms(programType, query);
            }
            else if (FilterDDL.SelectedValue == "social")
            {
                programType = "social";
                BindPrograms(programType, query);
            }
        }
    }
}