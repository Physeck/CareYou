using CareYou.Model;
using CareYou.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CareYou.Handler
{
    public class ProgramHandler
    {
        public static List<Program> getFirstProgram(int userID)
        {
            return programRepo.getProgramsByUserID(userID).ToList();
        }

        public static List<Program> getSecondAboveProgram(int userID)
        {
            return programRepo.getProgramsByUserID(userID).Skip(1).ToList();
        }
    }
}