using CareYou.Model;
using CareYou.Repository;
using System;
using System.Collections.Generic;
using System.Diagnostics;
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

        public static List<dynamic> getFiveFirstSocialProgramsForHome()
        {
            var programs = programRepo.getAllVerifiedSocialPrograms().Take(5).ToList();
            List<dynamic> programDetails = new List<dynamic>();

            foreach (var program in programs)
            {
                double Progress = (double)program.ProgramRaised / (double)program.ProgramTarget * 100;
                if (Progress > 100) Progress = 100;
                dynamic programDetail = new
                {
                    ProgramID = program.ProgramID,
                    ProgramTitle = program.ProgramTitle,
                    ProgramDesc = program.ProgramDesc,
                    ProgramImage = program.ProgramImage,
                    FundraiserName = program.FundraiserName,
                    ProgramType = program.ProgramType,
                    ProgramRaised = program.ProgramRaised,
                    Progress = Progress
                };

                programDetails.Add(programDetail);
            }

            return programDetails;
        }
    }
}