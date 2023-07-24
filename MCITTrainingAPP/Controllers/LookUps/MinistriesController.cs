using MCITTrainingAPP.DataBaseServices;
using MCITTrainingAPP.Models.AppModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc; 

namespace MCITTrainingAPP.Controllers.LookUps
{
    [Authorize]
    public class MinistriesController : Controller
    {
        MinistriesService _ministriesService = new MinistriesService();
        SubMinistriesService _subMinistriesService = new SubMinistriesService();
        public ActionResult Index()
        {
            return View();
        }

        public JsonResult List()
        {
            return Json(_ministriesService.MinistriesList(), JsonRequestBehavior.AllowGet);
        }
         

        [Authorize(Roles = "Administrator")]
        [HttpPost]
        public JsonResult Add(MinistryModel MinistryModel)
        {
            return Json(_ministriesService.Add(MinistryModel), JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetbyID(int ID)
        {
            return Json(_ministriesService.GetMinistryByID(ID), JsonRequestBehavior.AllowGet);
        }

        //[Authorize(Roles = "Administrator")]
        [HttpPost]
        public JsonResult Update(MinistryModel MinistryModel)
        {
            return Json(_ministriesService.Update(MinistryModel), JsonRequestBehavior.AllowGet);
        }
        //[Authorize(Roles = "Administrator")]
        public JsonResult Delete(int ID)
        {
            return Json(_ministriesService.Delete(ID), JsonRequestBehavior.AllowGet);
        }

        public JsonResult Count()
        {
            return Json(_ministriesService.MinistriesList().Count(), JsonRequestBehavior.AllowGet);
        }

      






        public JsonResult GetSubMinistriesByMinistryID(int ID)
        {
            return Json(_subMinistriesService.GetSubMinistriesByMinistryID(ID), JsonRequestBehavior.AllowGet);
        }

        //[HttpPost]
        //public JsonResult AddCourseForProgram(TrainingCourseModel TrainingCourse)
        public JsonResult AddSubMinistry(string SubMinistryName, int? MinistryID)
        {
            return Json(_subMinistriesService.Add(SubMinistryName, MinistryID), JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetSubMinistryInfoByID(int ID)
        { 
            return Json(_subMinistriesService.GetSubMinistryInfoByID(ID), JsonRequestBehavior.AllowGet);
        }
        public JsonResult UpdateSubMinistry(string SubMinistryName, int? SubMinistryID)
        {
            return Json(_subMinistriesService.Update(SubMinistryName, SubMinistryID), JsonRequestBehavior.AllowGet);
        }

        public JsonResult DeleteSubMinistry(int ID)
        {
            return Json(_subMinistriesService.Delete(ID), JsonRequestBehavior.AllowGet);
        }
    }
}