using CareYou.DataClass;
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

        public static Program getProgramById(int programID)
        {
            return programRepo.getProgramById(programID);
        }

        public static Double getProgramProgress(int programID)
        {
            Program program = programRepo.getProgramById(programID);
            double Progress = (double)program.ProgramRaised / (double)program.ProgramTarget * 100;
            if (Progress > 100) Progress = 100;
            return Progress;
        }
        public static List<dynamic> getFiveFirstSocialProgramsForHome()
        {
            var programs = programRepo.getAllVerifiedSocialPrograms().Take(5).ToList();
            List<dynamic> programDetails = new List<dynamic>();

            foreach (var program in programs)
            {
                double Progress = getProgramProgress(program.ProgramID);
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

        public static List<dynamic> getFiveFirstProjectProgramsForHome()
        {
            var programs = programRepo.getAllVerifiedProjectPrograms().Take(5).ToList();
            List<dynamic> programDetails = new List<dynamic>();

            foreach (var program in programs)
            {
                double Progress = getProgramProgress(program.ProgramID);
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

        private static String CalculateRelativeTime(DateTime commentTime)
        {
            var timeSpan = DateTime.Now - commentTime;

            if (timeSpan <= TimeSpan.FromSeconds(60))
                return "now";
            if (timeSpan <= TimeSpan.FromMinutes(60))
                return $"{timeSpan.Minutes} minutes ago";
            if (timeSpan <= TimeSpan.FromHours(24))
                return $"{timeSpan.Hours} hours ago";
            if (timeSpan <= TimeSpan.FromDays(30))
                return $"{timeSpan.Days} days ago";
            if (timeSpan <= TimeSpan.FromDays(365))
                return $"{timeSpan.Days / 30} months ago";
            return $"{timeSpan.Days / 365} years ago";
        }

        public static String getProgramCreatedDate(int programId)
        {
            Program program = programRepo.getProgramById(programId);
            return "Created " + CalculateRelativeTime(program.StartDate);
        }

        public static List<dynamic> getAllComments(int programId)
        {
            List<Transaction> transactions = transactionRepo.getDonationsByProgramId(programId);
            List<dynamic> comments = new List<dynamic>();
            foreach(Transaction tr in transactions)
            {
                if(tr.Donation.Comment == null || tr.Donation.Comment == "")
                {
                    continue;
                }
                else
                {
                    String CommentTime = CalculateRelativeTime(tr.TransactionDate);
                    if (tr.Donation.isAnonymous)
                    {
                        dynamic comment = new
                        {
                            UserID = tr.User.UserID,
                            UserName = "Anonymous",
                            ProfilePicture = "ProfileDefault.png",
                            Amount = tr.Amount,
                            Comment = tr.Donation.Comment,
                            CommentTime = CommentTime
                        };
                        comments.Add(comment);
                    }
                    else
                    {
                        dynamic comment = new
                        {
                            UserID = tr.User.UserID,
                            UserName = tr.User.UserName,
                            ProfilePicture = tr.User.ProfilePicture,
                            Amount = tr.Amount,
                            Comment = tr.Donation.Comment,
                            CommentTime = CommentTime
                        };
                        comments.Add(comment);
                    }  
                }
                
            }
            return comments;
        }
        public static int getDonationsCount(int programId)
        {
            return transactionRepo.getDonationsByProgramId(programId).Count;
        }

        public static List<dynamic> get3TopDonations(int programId)
        {
            List<Donation> donations = programRepo.getTopDonationsByProgramId(programId).Take(3).ToList();
            List<dynamic> topDonations = new List<dynamic>();
            foreach(Donation donation in donations)
            {
                if (donation.isAnonymous)
                {
                    dynamic topDonation = new
                    {
                        UserID = donation.Transaction.User.UserID,
                        UserName = "Anonymous",
                        ProfilePicture = "ProfileDefault.png",
                        Amount = donation.Transaction.Amount
                    };
                    topDonations.Add(topDonation);
                }
                else
                {
                    dynamic topDonation = new
                    {
                        UserID = donation.Transaction.User.UserID,
                        UserName = donation.Transaction.User.UserName,
                        ProfilePicture = donation.Transaction.User.ProfilePicture,
                        Amount = donation.Transaction.Amount
                    };
                    topDonations.Add(topDonation);
                }
                
            }
            return topDonations;
        }

        public static void deleteProgram(int programId)
        {
            programRepo.deleteProgram(programId);
        }

        public static Response<ProgramChanges> createProgramChanges(int programId, String desc, int target, DateTime deadline, HttpPostedFile file)
        {
            ProgramChanges changes = programRepo.createNewProgramChanges(programId, desc, target, deadline, file.FileName);
            return new Response<ProgramChanges>()
            {
                Success = true,
                Message = "",
                Field = "changes",
                Payload = changes
            };
        }
    }
}