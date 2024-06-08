using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CareYou.Repository;

namespace CareYou.Views
{
    public partial class History : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            history2Above.DataSource = transactionRepo.getTransactionByUserID(1);
            DataBind();
        }
    }
}