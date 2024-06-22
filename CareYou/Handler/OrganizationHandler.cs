using CareYou.DataClass;
using CareYou.Model;
using CareYou.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CareYou.Handler
{
    public class OrganizationHandler
    {
        public static Response<Organization> CreateOrganization(int userId, String name, String type, String location, String phone, String email, String leaderName, HttpPostedFile cert)
        {
            String imageLoc = ProgramHandler.UploadFile(cert, "~/Organization/cert/");
            Organization org = OrganizationRepo.CreateOrganization(userId, name, type, location, phone, email, leaderName, imageLoc);
            return new Response<Organization>()
            {
                Success = true,
                Message = "",
                Field = "",
                Payload = org
            };

        }

        public static Response<Organization> CreateOrganization(int userId, String name, String type, String location, String phone, String email, String website, String leaderName, HttpPostedFile cert)
        {
            String imageLoc = ProgramHandler.UploadFile(cert, "~/Organization/cert/");
            Organization org = OrganizationRepo.CreateOrganization(userId, name, type, location, phone, email, website, leaderName, imageLoc);
            User user = userRepo.GetUserById(userId);
            userRepo.changeRole(user, "organization");
            return new Response<Organization>()
            {
                Success = true,
                Message = "",
                Field = "",
                Payload = org
            };

        }

        public static Organization GetOrganizationByUserId(int userId)
        {
            return OrganizationRepo.GetOrganizationByUserId(userId);
        }
    }
}