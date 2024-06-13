using CareYou.Handler;
using CareYou.Model;
using CareYou.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CareYou.Controller
{
    public class transactionController
    {
        public static List<Transaction> getTransactionBasedOnDateAndUserID(DateTime date, int id)
        {
            return transactionHandler.getTransactionBasedOnDateAndUserID(date, id);
        }
    }
}