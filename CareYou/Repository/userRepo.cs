using CareYou.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CareYou.Repository
{
    public class userRepo
    {
        static CareYouDBEntities db = DatabaseSingleton.getInstance();

        public static User getTop1Organization()
        {
            return (from x in db.Users where x.Role.Equals("organization") select x).OrderByDescending(x => x.Transactions.Sum(y => y.Amount)).Take(1).FirstOrDefault();
        }

        public static User getTop1User()
        {
            return (from x in db.Users where x.Role.Equals("user") select x).OrderByDescending(x => x.Transactions.Sum(y => y.Amount)).Take(1).FirstOrDefault();
        }

        public static User getTop2Organization()
        {
            return (from x in db.Users where x.Role.Equals("organization") select x).OrderByDescending(x => x.Transactions.Sum(y => y.Amount)).Skip(1).Take(1).FirstOrDefault();
        }

        public static User getTop2User()
        {
            return (from x in db.Users where x.Role.Equals("user") select x).OrderByDescending(x => x.Transactions.Sum(y => y.Amount)).Skip(1).Take(1).FirstOrDefault();
        }

        public static User getTop3Organization()
        {
            return (from x in db.Users where x.Role.Equals("organization") select x).OrderByDescending(x => x.Transactions.Sum(y => y.Amount)).Skip(2).Take(1).FirstOrDefault();
        }

        public static User getTop3User()
        {
            return (from x in db.Users where x.Role.Equals("user") select x).OrderByDescending(x => x.Transactions.Sum(y => y.Amount)).Skip(2).Take(1).FirstOrDefault();
        }

        public static List<User> get4to10User()
        {
            return (from x in db.Users where x.Role.Equals("user") select x).OrderByDescending(x => x.Transactions.Sum(y => y.Amount)).Skip(3).Take(7).ToList();
        }

        public static List<User> get4to10Organization()
        {
            return (from x in db.Users where x.Role.Equals("organization") select x).OrderByDescending(x => x.Transactions.Sum(y => y.Amount)).Skip(3).Take(7).ToList();
        }

        public static User GetUserById(int id)
        {
            return db.Users.Find(id);
        }

        public static User GetUserByName(String name)
        {
            return (from x in db.Users where x.UserName.Equals(name) select x).FirstOrDefault();
        }

        public static List<User> getOrderedUser()
        {
            return (from x in db.Users where x.Role.Equals("user") select x).OrderByDescending(x => x.Transactions.Sum(y => y.Amount)).ToList();
        }

        public static List<User> getOrderedOrganization()
        {
            return (from x in db.Users where x.Role.Equals("organization") select x).OrderByDescending(x => x.Transactions.Sum(y => y.Amount)).ToList();
        }

        public static User getUserByEmail(String email)
        {
            return (from x in db.Users where x.UserEmail.Equals(email) select x).FirstOrDefault();
        }

        public static void updateUserProfile(User curr, String name, String email, String password)
        {
            curr.UserName = name;
            curr.UserEmail = email;
            curr.UserPassword = password;
            db.SaveChanges();
        }
    }
}