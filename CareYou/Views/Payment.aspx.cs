using CareYou.Controller;
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
           int  programId = Convert.ToInt32(Request.QueryString["id"]);
            CCForm.Attributes["class"] = CreditCardRB.Checked ? "cc-form-container" : "cc-form-container hidden";

        }

        protected void DonateBtn_Click(object sender, EventArgs e)
        {
            String strAmount = AmountTB.Text;
            bool isFeeChecked = PlatformFeeCB.Checked;
            bool isAnonymousChecked = AnonymousCB.Checked;
            string selectedPaymentMethod = "";
            string errorMsg = "";
            foreach (Control control in methodList.Controls)
            {
                if (control is RadioButton radioButton && radioButton.GroupName == "paymentMethod")
                {
                    if (radioButton.Checked)
                    {
                        selectedPaymentMethod = radioButton.ID;
                        break; 
                    }
                }
            }
            if (selectedPaymentMethod.Equals("CreditCardRB")){
                string ccName = CCNameTB.Text;
                string ccNumber = CCNumberTB.Text;
                string ccExpireMonth = CCExpireMonthTB.Text;
                string ccExpireYear = CCExpireYearTB.Text;
                string ccCVV = CCCVVTB.Text;
                string ccPostcode = CCPostcodeTB.Text;
                errorMsg = PaymentController.doTransactionWithCC(strAmount, isFeeChecked, isAnonymousChecked, ccName, ccNumber, ccExpireMonth, ccExpireYear, ccCVV, ccPostcode);
            }
            else
            {
                errorMsg = PaymentController.doTransaction(strAmount, isFeeChecked, isAnonymousChecked);
            }

            if(errorMsg == "")
            {
                ErrorLbl.Text = "";
                //Response.Redirect("PaymentSuccess.aspx");
            }
            else
            {
                ErrorLbl.Text = errorMsg;
            }
        }
    }
}