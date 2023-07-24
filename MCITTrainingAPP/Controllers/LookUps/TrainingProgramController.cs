using MCITTrainingAPP.DataBaseServices;
using MCITTrainingAPP.Models.AppModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc; 

namespace TrainingProjectsMSApp.Controllers.LookUps
{
    //[Authorize]
    public class TrainingProgramController : Controller
    {
        TrainingProgramsService _trainingProgramsService = new TrainingProgramsService();
        TrainingCourseService _trainingCourseService = new TrainingCourseService();
        public ActionResult Index()
        {
            return View();
        }

        public JsonResult List()
        { 
            return Json(_trainingProgramsService.TrainingProgramsList(), JsonRequestBehavior.AllowGet);
        }

        [Authorize(Roles = "Administrator")]
        [HttpPost]
        public JsonResult Add(TrainingProgramModel TrainingProgram)
        {
            return Json(_trainingProgramsService.Add(TrainingProgram), JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetbyID(int ID)
        {
            return Json(_trainingProgramsService.GetTrainingProgramByID(ID), JsonRequestBehavior.AllowGet);
        }
        [Authorize(Roles = "Administrator")]
        public JsonResult Update(TrainingProgramModel TrainingProgram)
        {
            return Json(_trainingProgramsService.Update(TrainingProgram), JsonRequestBehavior.AllowGet);
        }
        [Authorize(Roles = "Administrator")]
        public JsonResult Delete(int ID)
        {
            return Json(_trainingProgramsService.Delete(ID), JsonRequestBehavior.AllowGet);
        }

        public JsonResult Count()
        {
            return Json(_trainingProgramsService.TrainingProgramsList().Count(), JsonRequestBehavior.AllowGet);
        }








        public JsonResult GetCoursesByProgramID(int ID)
        {
            return Json(_trainingCourseService.GetCoursesByProgramID(ID), JsonRequestBehavior.AllowGet);
        }

        //[HttpPost]
        //public JsonResult AddCourseForProgram(TrainingCourseModel TrainingCourse)
        public JsonResult AddCourseForProgram(string TrainingCourseName, int TrainingProgramID)
        {
            return Json(_trainingCourseService.Add(TrainingCourseName, TrainingProgramID), JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetCourseByProgramID(int ID)
        { 
            return Json(_trainingCourseService.GetCourseByProgramID(ID), JsonRequestBehavior.AllowGet);
        }
        public JsonResult UpdateCourseForProgram(string TrainingCourseName, int? TrainingCourseID)
        {
            return Json(_trainingCourseService.Update(TrainingCourseName, TrainingCourseID), JsonRequestBehavior.AllowGet);
        }

        public JsonResult DeleteCourseForProgram(int ID)
        {
            return Json(_trainingCourseService.Delete(ID), JsonRequestBehavior.AllowGet);
        }
    }
}