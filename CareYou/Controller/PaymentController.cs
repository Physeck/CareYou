using CareYou.Handler;
using CareYou.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CareYou.Controller
{
    public class PaymentController
    {
        public static String checkAmount(String amount)
        {
            String response = "";
            if(amount == "")
            {
                response = "Amount cannot be empty";
            }
            return response;
        }
        public static String checkName(String name)
        {
            String response = "";
            if(name == "")
            {
                response = "Name cannot be empty";
            }
            return response;
        }

        public static String checkCCNumber(String ccNumber)
        {
            String response = "";
            if(ccNumber == "")
            {
                response = "Credit Card Number cannot be empty";
            }else if(ccNumber.Length != 16)
            {
                response = "Credit Card is invalid!";
            }
            return response;
        }

        public static String checkCCExpDate(String ccExpMonth, String ccExpYear)
        {
            String response = "";
            int month = int.Parse(ccExpMonth);
            int year = int.Parse(ccExpYear);
            if (year < 100)
            {
                year += 2000;
            }
            DateTime expirationDate = new DateTime(year, month, DateTime.DaysInMonth(year, month));
            if (ccExpMonth == "")
            {
                response = "Month cannot be empty";
            }
            else if (ccExpYear == "")
            {
                response = "Year cannot be empty";
            }
            else if(expirationDate < DateTime.Now)
            {
                response = "Credit Card has expired!";
            }
            return response;
        }

        public static String checkCCCVV(String ccCVV)
        {
            String response = "";
            if(ccCVV == "")
            {
                response = "CVV cannot be empty";
            }else if(ccCVV.Length != 3)
            {
                response = "CVV is invalid!";
            }
            return response;
        }

        public static String checkCCPostcode(String ccPostcode)
        {
            String response = "";
            if(ccPostcode == "")
            {
                response = "Postcode cannot be empty";
            }else if(ccPostcode.Length != 5)
            {
                response = "Postcode is invalid!";
            }
            return response;
        }

        public static String isAgreementChecked(bool isFeeChecked)
        {
            String response = "";
            if(isFeeChecked == false)
            {
                response = "You must agree to the agreement!";
            }
            return response;
        }


        public static String doTransactionWithCC(String strAmount, bool isFeeChecked, bool isAnonymous, String ccName, String ccNumber, String ccExpMonth, String ccExpYear, String ccCVV, String ccPostcode, int userId, int programId)
        {
            String response = checkAmount(strAmount);
            if(response == "")
            {
                response = isAgreementChecked(isFeeChecked);
            }
            if(response == "")
            {
                response = checkName(ccName);
            }
            if(response == "")
            {
                response = checkCCNumber(ccNumber);
            }
            if (response == "")
            {
                response = checkCCCVV(ccCVV);
            }
            if (response == "")
            {
                response = checkCCExpDate(ccExpMonth, ccExpYear);
            }
            if(response == "")
            {
                response = checkCCPostcode(ccPostcode);
            }
            if(response == "")
            {
                transactionHandler.createNewTransaction(userId, DateTime.Now, int.Parse(strAmount), "donation", programId, "Credit Card");
            }
            return response;
        }

        public static String doTransaction(String strAmount, bool isFeeChecked, bool isAnonymous, int userId, int programId, string paymentMethod)
        {
            String response = checkAmount(strAmount);
            if (response == "")
            {
                response = isAgreementChecked(isFeeChecked);
            }
            if (response == "")
            {
                transactionHandler.createNewTransaction(userId, DateTime.Now, int.Parse(strAmount), "donation", programId, paymentMethod);
            }
            return response;
        }
    }
}