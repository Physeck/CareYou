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

        public static List<Transaction> getTransactionBasedOnUserID(int id)
        {
            return transactionRepo.getTransactionByUserID(id);
        }

        public static List<Transaction> getTransactionBasedOnTypeAndDateAndUserID(DateTime date, String type, int id)
        {
            return transactionRepo.getTransactionBasedOnTypeAndDateAndUserID(date, type, id);
        }
    }
}