using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareYou.Views
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CCForm.Attributes["class"] = CreditCardRB.Checked ? "cc-form-container" : "cc-form-container hidden";
        }

        protected void DonateBtn_Click(object sender, EventArgs e)
        {

        }

        protected void CreditCardRB_CheckedChanged(object sender, EventArgs e)
        {
            
        }
    }
}