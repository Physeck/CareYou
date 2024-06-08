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
    }
}