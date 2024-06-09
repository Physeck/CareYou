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
    public partial class UpdateProfile : System.Web.UI.Page
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

            badgeOfUser = badgeController.getBadgeByUserID(id);
            uPBadges.DataSource = badgeOfUser.badges;
            uPBadges.DataBind();

            if (badgeOfUser.totalBadge != 0)
            {
                noBadgeLbl.Visible = false;
            }
            else
            {
                noBadgeLbl.Visible = true;
            }

            if (curr.Role.Equals("user"))
            {
                rank = userController.getUserRank(id);
            }

            if (!Page.IsPostBack)
            {
                showpp.Visible = true;
                updatePP.Visible = false;
            }

        }

        protected void UPBtn_Click(object sender, EventArgs e)
        {
            showpp.Visible = false;
            updatePP.Visible = true;
            UPPass.Visible = false;
            cancelChangeUP.Visible = false;
            changePassU.Visible = true;

            PPNameTB.Text = curr.UserName;
            PPEmailTB.Text = curr.UserEmail;
        }

        protected void changePassU_Click(object sender, EventArgs e)
        {
            UPPass.Visible = true;
            changePassU.Visible = false;
            cancelChangeUP.Visible = true;
        }

        protected void cancelChangeUP_Click(object sender, EventArgs e)
        {
            changePassU.Visible = true;
            cancelChangeUP.Visible = false;
            UPPass.Visible = false;
        }

        protected void updtP2_Click(object sender, EventArgs e)
        {
            //update the profile
            showpp.Visible = true;
            updatePP.Visible = false;
        }
    }
}