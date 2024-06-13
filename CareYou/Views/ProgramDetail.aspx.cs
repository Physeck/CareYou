using CareYou.Handler;
using CareYou.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace CareYou.Views
{
    public partial class ProgramDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int programId = Convert.ToInt32(Request.QueryString["id"]);
            Program program = ProgramHandler.getProgramById(programId);
            if(program != null)
            {
                ProgramImage.ImageUrl = "~/Assets/Program/" + program.ProgramImage;
                FundraiserImage.ImageUrl = "~/Assets/Profiles/" + program.User.ProfilePicture;
                FundraiserName.Text = program.FundraiserName;
                BeneficiaryName.Text = program.BeneficiaryName;
                ProgramTitleLbl.Text = program.ProgramTitle;
                ProgramDescLbl.Text = program.ProgramDesc;
                
                ViewState["CommentCount"] = 5;
                BindComments(programId);
                ProgramCreatedLbl.Text = ProgramHandler.getProgramCreatedDate(programId);
                TotalRaisedLbl.Text = string.Format("Rp. {0:N0}", program.ProgramRaised);
                GoalLbl.Text = "raised of " + string.Format("Rp. {0:N0}", program.ProgramTarget) + " goal";
                DonationsCountLbl.Text = ProgramHandler.getDonationsCount(programId).ToString() + " donations";

                progressBar.Style["width"] = ProgramHandler.getProgramProgress(programId) + "%";
                List<Donation> Top3Donations = ProgramHandler.get3TopDonations(programId);
                if(Top3Donations.Count == 0)
                {
                    TopDonationRepeater.Visible = false;
                    TopDonationLbl.Visible = false;
                }
                else
                {
                    TopDonationRepeater.DataSource = Top3Donations;
                    TopDonationRepeater.DataBind();
                }   
            }
        }

        protected void ShowMoreBtn_Click(object sender, EventArgs e)
        {
            int currentCount = (int)ViewState["CommentCount"];
            ViewState["CommentCount"] = currentCount + 5; 
            int programId = Convert.ToInt32(Request.QueryString["id"]);
            BindComments(programId);
        }

        private void BindComments(int programId)
        {
            var allComments = ProgramHandler.getAllComments(programId);
            int count = (int)ViewState["CommentCount"];
            var comments = allComments.GetRange(0, Math.Min(count, allComments.Count));
            CommentRepeater.DataSource = comments;
            CommentRepeater.DataBind();
            ShowMoreBtn.Visible = count < allComments.Count;
        }

        protected void ReportLB_Click(object sender, EventArgs e)
        {

        }

        protected void DonateBtn_Click(object sender, EventArgs e)
        {

        }
    }
}