using CareYou.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CareYou.Repository
{
    public class transactionRepo
    {
        static CareYouDBEntities db = DatabaseSingleton.getInstance();
        public static int getUserAmount(User user)
        {
            if (user.Transactions.Count == 0)
            {
                return 0;
            }

            int amount = db.Transactions.Where(x => x.UserID == user.UserID).Sum(x => x.Amount);
            return amount;
        }

        public static List<Transaction> getTransactionByUserID(int userID)
        {
            return (from x in db.Transactions where x.UserID == userID select x).ToList();
        }
    }
}