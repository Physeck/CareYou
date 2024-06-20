using CareYou.DataClass;
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

        public static Response<ProgramChanges> checkTitle(String title)
        {
            if(title == "")
            {
                return new Response<ProgramChanges>()
                {
                    Success = false,
                    Message = "Title cannot be empty",
                    Field = "title",
                    Payload = null
                };
            }
            return new Response<ProgramChanges>()
            {
                Success = true,
                Message = "",
                Field = "title",
                Payload = null
            };
        }

        public static Response<ProgramChanges> checkTopic(String topic)
        {
            if (topic == "")
            {
                return new Response<ProgramChanges>()
                {
                    Success = false,
                    Message = "Topic cannot be empty",
                    Field = "topic",
                    Payload = null
                };
            }
            return new Response<ProgramChanges>()
            {
                Success = true,
                Message = "",
                Field = "topic",
                Payload = null
            };
        }

        public static Response<ProgramChanges> checkDesc(String desc)
        {
            if (desc == "")
            {
                return new Response<ProgramChanges>()
                {
                    Success = false,
                    Message = "Description cannot be empty",
                    Field = "desc",
                    Payload = null
                };
            }
            return new Response<ProgramChanges>()
            {
                Success = true,
                Message = "",
                Field = "desc",
                Payload = null
            };
        }

        public static Response<ProgramChanges> checkTarget(int target)
        {
            if (target <= 0)
            {
                return new Response<ProgramChanges>()
                {
                    Success = false,
                    Message = "Target is invalid",
                    Field = "target",
                    Payload = null
                };
            }
            return new Response<ProgramChanges>()
            {
                Success = true,
                Message = "",
                Field = "target",
                Payload = null
            };
        }

        public static Response<ProgramChanges> checkDeadline(String deadline)
        {
            if(!DateTime.TryParse(deadline, out DateTime result))
            {
                return new Response<ProgramChanges>()
                {
                    Success = false,
                    Message = "Invalid date format",
                    Field = "deadline",
                    Payload = null
                };
            }
            if (result < DateTime.Now)
            {
                return new Response<ProgramChanges>()
                {
                    Success = false,
                    Message = "Deadline must be greater than current date",
                    Field = "deadline",
                    Payload = null
                };
            }
            return new Response<ProgramChanges>()
            {
                Success = true,
                Message = "",
                Field = "deadline",
                Payload = null
            };
        }

        public static Response<ProgramChanges> checkConfirmation(bool confirmation)
        {
            if (!confirmation)
            {
                return new Response<ProgramChanges>()
                {
                    Success = false,
                    Message = "Please confirm the changes",
                    Field = "confirmation",
                    Payload = null
                };
            }
            return new Response<ProgramChanges>()
            {
                Success = true,
                Message = "",
                Field = "confirmation",
                Payload = null
            };
        }



        public static Response<ProgramChanges> createProgramChanges(bool confirmation, int programId, String desc, int target, String deadline, HttpPostedFile file)
        {
            Response<ProgramChanges> confirmationResponse = checkConfirmation(confirmation);
            Response<ProgramChanges> descResponse = checkDesc(desc);
            Response<ProgramChanges> targetResponse = checkTarget(target);
            Response<ProgramChanges> deadlineResponse = checkDeadline(deadline);
            if(confirmationResponse.Success && descResponse.Success && targetResponse.Success && deadlineResponse.Success)
            {
                
                return ProgramHandler.createProgramChanges(programId, desc, target, Convert.ToDateTime(deadline), file);
            }
            
            if (!descResponse.Success)
            {
                return descResponse;
            }
            if (!targetResponse.Success)
            {
                return targetResponse;
            }
            if (!deadlineResponse.Success)
            {
                return deadlineResponse;
            }
            return confirmationResponse;
        }
    }
}