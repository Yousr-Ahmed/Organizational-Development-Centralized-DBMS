using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MCITTrainingAPP.Controllers
{
    public class SettingController : Controller
    {
        // GET: Setting
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public JsonResult ChangeTheme(string theme_value)
        {
            if (HttpContext.Request.Cookies.Get("Theme") == null)
            {
                HttpContext.Response.Cookies.Add(new HttpCookie("Theme")
                {
                    Expires = DateTime.Now.AddYears(3),
                    Value = theme_value
                });
            }
            else
            {
                HttpContext.Response.Cookies["Theme"].Value = theme_value;
                HttpContext.Response.Cookies["Theme"].Expires = DateTime.Now.AddYears(3);
            }
            return Json("done", JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult ChangePQ(string Qoute_value)
        {
            if (HttpContext.Request.Cookies.Get("PQ") == null)
            {
                HttpContext.Response.Cookies.Add(new HttpCookie("PQ")
                {
                    Expires = DateTime.Now.AddYears(3),
                    Value = Qoute_value
                });
            }
            else
            {
                HttpContext.Response.Cookies["PQ"].Value = Qoute_value;
                HttpContext.Response.Cookies["PQ"].Expires = DateTime.Now.AddYears(3);
            }
            return Json("done", JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult GetTheme()
        {
            if (HttpContext.Request.Cookies.Get("Theme") == null)
            {
                HttpContext.Response.Cookies.Add(new HttpCookie("Theme")
                {
                    Expires = DateTime.Now.AddYears(3),
                    Value = "Light"
                });
                return Json(HttpContext.Request.Cookies.Get("Theme").Value, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(HttpContext.Request.Cookies.Get("Theme").Value, JsonRequestBehavior.AllowGet);
            }
        }
        [HttpPost]
        public JsonResult GetPQ()
        {
            if (HttpContext.Request.Cookies.Get("PQ") == null)
            {
                HttpContext.Response.Cookies.Add(new HttpCookie("PQ")
                {
                    Expires = DateTime.Now.AddYears(3),
                    Value = "Y"
                });
                return Json(HttpContext.Request.Cookies.Get("PQ").Value, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(HttpContext.Request.Cookies.Get("PQ").Value, JsonRequestBehavior.AllowGet);
            }
        }
    }
}