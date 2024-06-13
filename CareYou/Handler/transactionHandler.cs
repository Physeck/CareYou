using CareYou.Model;
using CareYou.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CareYou.Handler
{
    public class transactionHandler
    {
        public static List<Transaction> getTransactionBasedOnDateAndUserID(DateTime date, int id)
        {
            return transactionRepo.getTransactionBasedOnDateAndUserID(date, id);
        }
    }
}