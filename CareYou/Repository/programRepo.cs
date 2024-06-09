using CareYou.Model;
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

        public static List<Program> getAllVerifiedPrograms()
        {
            return (from x in db.Programs where x.Verified == true select x).ToList();
        }

        public static List<Program> getAllVerifiedSocialPrograms()
        {
            return (from x in db.Programs where x.Verified == true && x.ProgramType.Equals("social") select x).ToList();
        }
    }
}