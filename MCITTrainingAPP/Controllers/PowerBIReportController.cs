using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MCITTrainingAPP.Controllers
{
    [Authorize]
    public class PowerBIReportController : Controller
    {
        // GET: PowerBIReport
        public ActionResult Index()
        {
            return View();
        }
    }
}