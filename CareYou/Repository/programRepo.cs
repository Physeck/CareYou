﻿using CareYou.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CareYou.Repository
{
    public class programRepo
    {
        static CareYouDBEntities db = DatabaseSingleton.getInstance();

        public static List<Program> getProgramsByUserID(int userID)
        {
            return (from x in db.Programs where x.User.UserID == userID select x).ToList();
        }

        public static Program getProgramById(int programID)
        {
            return (from x in db.Programs where x.ProgramID == programID select x).FirstOrDefault();
        }

        public static List<Program> getAllVerifiedPrograms()
        {
            return (from x in db.Programs where x.Verified == true select x).ToList();
        }

        public static List<Program> getAllVerifiedSocialPrograms()
        {
            return (from x in db.Programs where x.Verified == true && x.ProgramType.Equals("social") select x).ToList();
        }

        public static List<Program> getAllVerifiedProjectPrograms()
        {
            return (from x in db.Programs where x.Verified == true && x.ProgramType.Equals("social") select x).ToList();
        }

        public static List<Donation> getTopDonationsByProgramId(int programID)
        {
            return (from x in db.Donations where x.Transaction.ProgramID == programID orderby x.Transaction.Amount descending select x).ToList();
        }

    }
}