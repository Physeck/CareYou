using CareYou.Controller;
using CareYou.Model;
using CareYou.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareYou.Views
{
    public partial class Profile : System.Web.UI.Page
    {
        public User curr = null;
        public int totalDonate = 0;
        public int rank = 0;
        public userBadgeData badgeOfUser = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = 3; /*ganti jadi querystring*/

            curr = userRepo.GetUserById(id);
            totalDonate = userController.getTotalDonationFromUserID(id);


            if (curr.Role.Equals("user"))
            {
                rank = userController.getUserRank(id);
            }
        }
    }
}