using MCITTrainingAPP.DataBaseServices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MCITTrainingAPP.Controllers
{
    public class DashboardController : Controller
    {
        CandidateService CandidateService = new CandidateService();

        public ActionResult Index()
        {
            return View();
        }

        public JsonResult CandsCount()
        {
            return Json(CandidateService.CandsCount(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult TrainingCoursesCount()
        {
            return Json(CandidateService.TrainingCoursesCount(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult CertCount()
        {
            return Json(CandidateService.CertCount(), JsonRequestBehavior.AllowGet);
        } 
        public JsonResult SubMinistryCount()
        {
            return Json(CandidateService.SubMinistryCount(), JsonRequestBehavior.AllowGet);
        } 
        public JsonResult CandNumPerMinistry_SubMinistry()
        {
            return Json(CandidateService.CandNumPerMinistry_SubMinistry(), JsonRequestBehavior.AllowGet);
        } 
        
        public JsonResult CandNumPerMechanism()
        {
            return Json(CandidateService.CandNumPerMechanism(), JsonRequestBehavior.AllowGet);
        }  
        public JsonResult CandPerFiscalYear()
        {
            return Json(CandidateService.CandPerFiscalYear(), JsonRequestBehavior.AllowGet);
        }
        public JsonResult CanNumPerProvider()
        {
            return Json(CandidateService.CanNumPerProvider(), JsonRequestBehavior.AllowGet);
        }
        public JsonResult CourseNumPerProvider()
        {
            return Json(CandidateService.CourseNumPerProvider(), JsonRequestBehavior.AllowGet);
        }
        public JsonResult CandNumPerCourse()
        {
            return Json(CandidateService.CandNumPerCourse(), JsonRequestBehavior.AllowGet);
        }
        public JsonResult CandNumPerProgram()
        {
            return Json(CandidateService.CandNumPerProgram(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult NCandidatePerLevel()
        {
            return Json(CandidateService.NCandidatePerLevel(), JsonRequestBehavior.AllowGet);
        } 

    }
}