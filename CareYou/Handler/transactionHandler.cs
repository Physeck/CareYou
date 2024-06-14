using CareYou.Factory;
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
        public static void createNewTransaction(int UserID, DateTime TransactionDate, int Amount, string TransactionType, int ProgramID, string TransactionMethod)
        {
            int transactionId = transactionRepo.insertTransaction(UserID, TransactionDate, Amount, TransactionType, ProgramID);
            if (TransactionType == "donation")
            {
                transactionRepo.insertDonation(transactionId, TransactionMethod);
            }
            else if (TransactionType == "withdrawal")
            {
                transactionRepo.insertWithdrawal(transactionId, TransactionMethod);
            }
        }
    }
}