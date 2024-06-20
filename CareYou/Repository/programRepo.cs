using CareYou.Factory;
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

        public static void deleteProgram(int programId)
        {
            db.Programs.Remove(getProgramById(programId));
            db.SaveChanges();
        }

        public static int generateProgramID()
        {
            Program lastProgram = db.Programs.ToList().LastOrDefault();
            if (lastProgram == null)
            {
                return 1;
            }
            return lastProgram.ProgramID + 1;
        }

        public static int generateChangesProgramID()
        {
            ProgramChanges lastChanges = db.ProgramChanges1.ToList().LastOrDefault();
            if (lastChanges == null)
            {
                return 1;
            }
            return lastChanges.ProgramID + 1;
        }

        public static ProgramChanges createNewProgramChanges(int programId, String desc, int target, DateTime deadline, String image)
        {
            ProgramChanges changes = ProgramFactory.CreateProgramChanges(programId, desc, target, deadline, image);
            db.ProgramChanges1.Add(changes);
            db.SaveChanges();
            return changes;
        }

    }
}