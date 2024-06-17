using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareYou.Layouts
{
    public partial class AdminNavbar : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DashboardBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("DashboardPage.aspx");
        }

        protected void PendingBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("PendingVerificationPage.aspx");
        }

        protected void ReportsBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReportsPage.aspx");
        }

        protected void LogOutBtn_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Session["UserID"] = null;
            Session.Remove("user");
            Session.Remove("userID");
            HttpCookie cookie = Request.Cookies["user_cookie"];
            if (cookie != null)
            {
                cookie.Expires = DateTime.Now.AddDays(-2);
                Response.Cookies.Add(cookie);
            }
            Response.Redirect("LoginPage.aspx");

        }
    }
}