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
    public partial class AdminOrganizationDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int organizationId = Convert.ToInt32(Request.QueryString["id"]);
            Organization organization = OrganizationHandler.getOrganizationById(organizationId);
            NameTB.Text = organization.Name;
            TypeTB.Text = organization.Type;
            LocTB.Text = organization.Location;
            NumberTB.Text = organization.PhoneNumber;
            EmailTB.Text = organization.Email;
            LeaderTB.Text = organization.LeaderName;
            imageboxLb.Text = organization.Certificate;
        }

        protected void RejectBtn_Click(object sender, EventArgs e)
        {
            int organizationId = Convert.ToInt32(Request.QueryString["id"]);
            OrganizationHandler.RejectOrganization(organizationId);
        }

        protected void AccBtn_Click(object sender, EventArgs e)
        {
            int organizationId = Convert.ToInt32(Request.QueryString["id"]);
            OrganizationHandler.AcceptOrganization(organizationId);
        }
    }
}