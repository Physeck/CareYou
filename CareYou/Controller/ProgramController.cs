using CareYou.Handler;
using CareYou.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CareYou.Controller
{
    public class ProgramController
    {
        public static List<Program> getProgramHistory(int identifier, int userID)
        {
            if(identifier == 1)
            {
                return ProgramHandler.getFirstProgram(userID);
            }else if(identifier == 2)
            {
                return ProgramHandler.getSecondAboveProgram(userID);
            }

            return null;
        }

        public static bool isOwner(int programID, int userID)
        {
            Program program = ProgramHandler.getProgramById(programID);
            if(program != null)
            {
                return program.User.UserID == userID;
            }

            return false;
        }
    }
}