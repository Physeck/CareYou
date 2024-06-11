﻿using CareYou.Model;
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

        public static List<dynamic> getFiveFirstProjectProgramsForHome()
        {
            var programs = programRepo.getAllVerifiedProjectPrograms().Take(5).ToList();
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
            return comments;
        }
    }
}