using CareYou.Controller;
using CareYou.DataClass;
using CareYou.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareYou.Views
{
    public partial class OrganizationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendreqBtn_Click(object sender, EventArgs e)
        {
            int userId = (int)Session["UserID"];
            String name = NameTB.Text;
            String type = TypeTB.Text;
            String location = LocTB.Text;
            String phone = NumberTB.Text;
            String email = EmailTB.Text;
            String website = WebsiteTB.Text;
            String leaderName = LeaderTB.Text;
            HttpPostedFile cert = InsertImage.PostedFile;
            bool confirmation = ConfirmationCB.Checked;
            Response<Organization> response;
            if(website == "")
            {
                response = OrganizationController.createOrganization(userId, name, type, location, phone, email, leaderName, cert, confirmation);
            }
            else
            {
                response = OrganizationController.createOrganization(userId, name, type, location, phone, email, website, leaderName, cert, confirmation);
            }

            if (response.Success)
            {
                Response.Redirect("RequestSubmitted.aspx");
            }
            else
            {
                if (response.Field.Equals("topic"))
                {
                    topicErrorLbl.Text = response.Message;
                }
                else
                {
                    topicErrorLbl.Text = "";
                }
                if (response.Field.Equals("title"))
                {
                    titleErrorLbl.Text = response.Message;
                }
                else
                {
                    titleErrorLbl.Text = "";
                }
                if (response.Field.Equals("name"))
                {
                    nameErrorLbl.Text = response.Message;
                }
                else
                {
                    nameErrorLbl.Text = "";
                }
                if (response.Field.Equals("beneficiary"))
                {
                    benefeciaryErrorLbl.Text = response.Message;
                }
                else
                {
                    benefeciaryErrorLbl.Text = "";
                }
                if (response.Field.Equals("desc"))
                {
                    descErrorLbl.Text = response.Message;
                }
                else
                {
                    descErrorLbl.Text = "";
                }
                if (response.Field.Equals("type"))
                {
                    typeErrorLbl.Text = response.Message;
                }
                else
                {
                    typeErrorLbl.Text = "";
                }
                if (response.Field.Equals("location"))
                {
                    locErrorLbl.Text = response.Message;
                }
                else
                {
                    locErrorLbl.Text = "";
                }
                if (response.Field.Equals("target"))
                {
                    TargetErrorLbl.Text = response.Message;
                }
                else
                {
                    TargetErrorLbl.Text = "";
                }
                if (response.Field.Equals("deadline"))
                {
                    DeadlineErrorLbl.Text = response.Message;
                }
                else
                {
                    DeadlineErrorLbl.Text = "";
                }
                if (response.Field.Equals("programImage"))
                {
                    ImageErrorLbl.Text = response.Message;
                }
                else
                {
                    ImageErrorLbl.Text = "";
                }
                if (response.Field.Equals("idImage"))
                {
                    IDErrorLbl.Text = response.Message;
                }
                else
                {
                    IDErrorLbl.Text = "";
                }
                if (response.Field.Equals("confirmation"))
                {
                    ConfirmErrorLbl.Text = response.Message;
                }
                else
                {
                    ConfirmErrorLbl.Text = "";
                }
            }
        }
    }
    }
}