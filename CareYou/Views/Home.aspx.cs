using CareYou.Handler;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareYou.Views
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<dynamic> programs = ProgramHandler.getFiveFirstSocialProgramsForHome();

                ProgramRepeater.DataSource = programs;
                ProgramRepeater.DataBind();
            }
        }
    }
}