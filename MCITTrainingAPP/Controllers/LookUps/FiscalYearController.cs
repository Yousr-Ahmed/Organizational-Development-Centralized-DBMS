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
    public class FiscalYearController : Controller
    {
        FiscalYearsService _FiscalYearsService = new FiscalYearsService(); 
        public ActionResult Index()
        { 
            return View();
        }

        public JsonResult List()
        {
            return Json(_FiscalYearsService.FiscalYearsList(), JsonRequestBehavior.AllowGet);
        }

     
        [HttpPost]
        public JsonResult Add(FiscalYearModel FiscalYear)
        {
            return Json(_FiscalYearsService.Add(FiscalYear), JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetbyID(int ID)
        { 
            return Json(_FiscalYearsService.GetFiscalYearByID(ID), JsonRequestBehavior.AllowGet);
        }
 
        public JsonResult Update(FiscalYearModel FiscalYear)
        {
            return Json(_FiscalYearsService.Update(FiscalYear), JsonRequestBehavior.AllowGet);
        }
  
        public JsonResult Delete(int ID)
        {
            return Json(_FiscalYearsService.Delete(ID), JsonRequestBehavior.AllowGet);
        }


    }
}