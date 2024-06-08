using CareYou.Handler;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CareYou.Controller
{
    public class userController
    {
        public static top10Data getTop3User(int rank)
        {
            if(rank == 1)
            {
                return userHandler.getTop1Data("user");
            }else if(rank == 2)
            {
                return userHandler.getTop2Data("user");
            }else if(rank == 3)
            {
                return userHandler.getTop3Data("user");
            }

            return null;
        }

        public static List<top10Data> get4to10User()
        {
            return userHandler.getTop4to10("user");
        }

        public static top10Data getTop3Organization(int rank)
        {
            if (rank == 1)
            {
                return userHandler.getTop1Data("organization");
            }
            else if (rank == 2)
            {
                return userHandler.getTop2Data("organization");
            }
            else if (rank == 3)
            {
                return userHandler.getTop3Data("organization");
            }

            return null;
        }

        public static List<top10Data> get4to10Organization()
        {
            return userHandler.getTop4to10("organization");
        }
    }
}