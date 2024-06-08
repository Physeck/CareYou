﻿using CareYou.Model;
using CareYou.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CareYou.Handler
{
    public class userHandler
    {
        public static top10Data getTop1Data(String role)
        {
            top10Data top1 = null;
            if (role.Equals("user"))
            {
                var user = userRepo.getTop1User();
                if (user != null)
                {
                    top1 = new top10Data();
                    top1.Id = user.UserID;
                    top1.rank = 0;
                    top1.name = user.UserName;
                    top1.amount = transactionRepo.getUserAmount(user);
                    top1.image = user.ProfilePicture;
                    return top1;
                }
            }else if (role.Equals("organization"))
            {
                var org = userRepo.getTop1Organization();
                if (org != null)
                {
                    top1 = new top10Data();
                    top1.Id = org.UserID;
                    top1.rank = 0;
                    top1.name = org.UserName;
                    top1.amount = transactionRepo.getUserAmount(org);
                    top1.image = org.ProfilePicture;
                    return top1;
                }
            }
            
            return null;
        }

        public static top10Data getTop2Data(String role)
        {
            top10Data top2 = null;
            if (role.Equals("user"))
            {
                var user = userRepo.getTop2User();
                if (user != null)
                {
                    top2 = new top10Data();
                    top2.Id = user.UserID;
                    top2.rank = 0;
                    top2.name = user.UserName;
                    top2.amount = transactionRepo.getUserAmount(user);
                    top2.image = user.ProfilePicture;
                    return top2;
                }
            }
            else if (role.Equals("organization"))
            {
                var org = userRepo.getTop2Organization();
                if (org != null)
                {
                    top2 = new top10Data();
                    top2.Id = org.UserID;
                    top2.rank = 0;
                    top2.name = org.UserName;
                    top2.amount = transactionRepo.getUserAmount(org);
                    top2.image = org.ProfilePicture;
                    return top2;
                }
            }

            return null;
        }

        public static top10Data getTop3Data(String role)
        {
            top10Data top3 = null;
            if (role.Equals("user"))
            {
                var user = userRepo.getTop3User();
                if (user != null)
                {
                    top3 = new top10Data();
                    top3.Id = user.UserID;
                    top3.rank = 0;
                    top3.name = user.UserName;
                    top3.amount = transactionRepo.getUserAmount(user);
                    top3.image = user.ProfilePicture;
                    return top3;
                }
            }
            else if (role.Equals("organization"))
            {
                var org = userRepo.getTop3Organization();
                if (org != null)
                {
                    top3 = new top10Data();
                    top3.Id = org.UserID;
                    top3.rank = 0;
                    top3.name = org.UserName;
                    top3.amount = transactionRepo.getUserAmount(org);
                    top3.image = org.ProfilePicture;
                    return top3;
                }
            }

            return null;
        }

        public static List<top10Data> getTop4to10(String role)
        {

            top10Data it = null;
            List<top10Data> datas = null;

            if (role.Equals("user"))
            {
                List<User> users = userRepo.get4to10User();

                if (users != null)
                {
                    datas = new List<top10Data>();
                    int rank = 4;

                    foreach (User u in users)
                    {
                        it = new top10Data();
                        it.Id = u.UserID;
                        it.rank = rank;
                        it.name = u.UserName;
                        it.amount = transactionRepo.getUserAmount(u);
                        it.image = u.ProfilePicture;
                        datas.Add(it);
                        rank++;
                    }

                    return datas;
                }
            }else if (role.Equals("organization"))
            {
                List<User> org = userRepo.get4to10Organization();

                if (org != null)
                {
                    datas = new List<top10Data>();
                    int rank = 4;

                    foreach (User u in org)
                    {
                        it = new top10Data();
                        it.Id = u.UserID;
                        it.rank = rank;
                        it.name = u.UserName;
                        it.amount = transactionRepo.getUserAmount(u);
                        it.image = u.ProfilePicture;
                        datas.Add(it);
                        rank++;
                    }

                    return datas;
                }
            }
            return null;
        }

        public static User GetUserById(int id)
        {
            return userRepo.GetUserById(id);
        }
    }
}