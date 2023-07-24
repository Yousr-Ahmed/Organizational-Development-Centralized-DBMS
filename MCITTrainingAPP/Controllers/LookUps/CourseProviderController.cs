using MCITTrainingAPP.DataBaseServices;
using MCITTrainingAPP.Models.AppModels;
using MCITTrainingAPP.Models.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MCITTrainingAPP.Controllers.LookUps
{
    [Authorize]
    public class CourseProviderController : Controller
    {
        CourseProviderService _CourseProviderService = new CourseProviderService(); 
        public ActionResult Index()
        { 
            return View();
        }

        public JsonResult List()
        {
            return Json(_CourseProviderService.CourseProviderList(), JsonRequestBehavior.AllowGet);
        }

     
        [HttpPost]
        public JsonResult Add(CourseProviderModel CourseProvider)
        {
            return Json(_CourseProviderService.Add(CourseProvider), JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetbyID(int ID)
        { 
            return Json(_CourseProviderService.GetCourseProviderByID(ID), JsonRequestBehavior.AllowGet);
        }
 
        public JsonResult Update(CourseProviderModel CourseProvider)
        {
            return Json(_CourseProviderService.Update(CourseProvider), JsonRequestBehavior.AllowGet);
        }
  
        public JsonResult Delete(int ID)
        {
            return Json(_CourseProviderService.Delete(ID), JsonRequestBehavior.AllowGet);
        }
        public JsonResult Count()
        {
            return Json(_CourseProviderService.CourseProviderList().Count(), JsonRequestBehavior.AllowGet);
        }


    }
}