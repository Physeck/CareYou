using CareYou.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareYou.Views
{
    public partial class TopDonation : System.Web.UI.Page
    {
        public top10Data second = null;
        public top10Data three = null;
        public top10Data one = null;

        protected void getData()
        {
            List<top10Data> toDisplay = new List<top10Data>();
            one = userController.getTop3User(1);
            second = userController.getTop3User(2);
            three = userController.getTop3User(3);

            top4Above.DataSource = userController.get4to10User();
            top4Above.DataBind();

            tDIndividual.Attributes.CssStyle.Add("border-bottom", "5px solid #012D19");
            tDOrganization.Attributes.CssStyle.Add("border-bottom", "1px solid #012D19");
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
            if(e.CommandName == "redirectPP")
            {
                //disini redirect ke profile page
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
            tDOrganization.Attributes.CssStyle.Add("border-bottom", "1px solid #012D19");
        }

        protected void tDOrganization_Click(object sender, EventArgs e)
        {
            one = userController.getTop3Organization(1);
            second = userController.getTop3Organization(2);
            three = userController.getTop3Organization(3);

            top4Above.DataSource = userController.get4to10Organization();
            top4Above.DataBind();
            tDIndividual.Attributes.CssStyle.Add("border-bottom", "1px solid #012D19");
            tDOrganization.Attributes.CssStyle.Add("border-bottom", "5px solid #012D19");
        }
    }
}