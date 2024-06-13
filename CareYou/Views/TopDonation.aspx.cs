using CareYou.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareYou.Views
{
    public partial class TopDonation1 : System.Web.UI.Page
    {
        public top10Data second = null;
        public top10Data three = null;
        public top10Data one = null;

        protected void getData()
        {
            //tambah autorisasi dari login page
            List<top10Data> toDisplay = new List<top10Data>();
            one = userController.getTop3User(1);
            second = userController.getTop3User(2);
            three = userController.getTop3User(3);
            top4Above.DataSource = userController.get4to10User();
            top4Above.DataBind();
            boolI.Visible = true;

            tDIndividual.Attributes.CssStyle.Add("border-bottom", "5px solid #012D19");
            tDOrganization.Attributes.CssStyle.Remove("border-bottom");

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                getData();

            }
        }

        protected void top4Above_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "redirectPP")
            {
                //ganti redirect jadi ke update profile
                Response.Redirect("~/Views/Profile.aspx?id=" + e.CommandArgument.ToString());
            }
        }

        protected void tDIndividual_Click(object sender, EventArgs e)
        {
            one = userController.getTop3User(1);
            second = userController.getTop3User(2);
            three = userController.getTop3User(3);

            top4Above.DataSource = userController.get4to10User();
            top4Above.DataBind();

            tDIndividual.Attributes.CssStyle.Add("border-bottom", "5px solid #012D19");
            tDOrganization.Attributes.CssStyle.Remove("border-bottom");
            boolI.Visible = true;
        }

        protected void tDOrganization_Click(object sender, EventArgs e)
        {
            one = userController.getTop3Organization(1);
            second = userController.getTop3Organization(2);
            three = userController.getTop3Organization(3);

            top4Above.DataSource = userController.get4to10Organization();
            top4Above.DataBind();
            tDIndividual.Attributes.CssStyle.Remove("border-bottom");
            tDOrganization.Attributes.CssStyle.Add("border-bottom", "5px solid #012D19");
            boolI.Visible = false;
        }

        protected void top3LB_Click(object sender, EventArgs e)
        {

            if (boolI.Visible)
            {
                three = userController.getTop3User(3);
            }
            else
            {
                three = userController.getTop3Organization(3);

            }
            Response.Redirect("~/Views/Profile.aspx?id=" + three.Id);
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            if (boolI.Visible)
            {
                second = userController.getTop3User(2);
            }
            else
            {
                second = userController.getTop3Organization(2);

            }

            
            Response.Redirect("~/Views/Profile.aspx?id=" + second.Id);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            if (boolI.Visible)
            {
                one = userController.getTop3User(1);
            }
            else
            {
                one = userController.getTop3Organization(1);

            }
            Response.Redirect("~/Views/Profile.aspx?id=" + one.Id);
        }
    }
}