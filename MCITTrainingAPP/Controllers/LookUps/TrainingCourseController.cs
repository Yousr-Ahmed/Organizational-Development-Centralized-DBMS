using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using MCITTrainingAPP.Models.EF;

namespace MCITTrainingAPP.Controllers.LookUps
{
    public class TrainingCourseController : Controller
    {
        private MCITTrainingDBEntities db = new MCITTrainingDBEntities();

        // GET: TrainingCourse
        public ActionResult Index()
        {
            var lU_TrainingCourse = db.LU_TrainingCourse.Include(l => l.LU_TrainingProgram);
            return View(lU_TrainingCourse.ToList());
        }

        // GET: TrainingCourse/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LU_TrainingCourse lU_TrainingCourse = db.LU_TrainingCourse.Find(id);
            if (lU_TrainingCourse == null)
            {
                return HttpNotFound();
            }
            return View(lU_TrainingCourse);
        }

        // GET: TrainingCourse/Create
        public ActionResult Create()
        {
            ViewBag.TrainingProgramID = new SelectList(db.LU_TrainingProgram, "TrainingProgramID", "TrainingProgramName");
            return View();
        }

        // POST: TrainingCourse/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "TrainingCourseID,TrainingCourseName,TrainingProgramID,TrainingCourseCost")] LU_TrainingCourse lU_TrainingCourse)
        {
            if (ModelState.IsValid)
            {
                db.LU_TrainingCourse.Add(lU_TrainingCourse);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.TrainingProgramID = new SelectList(db.LU_TrainingProgram, "TrainingProgramID", "TrainingProgramName", lU_TrainingCourse.TrainingProgramID);
            return View(lU_TrainingCourse);
        }

        // GET: TrainingCourse/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LU_TrainingCourse lU_TrainingCourse = db.LU_TrainingCourse.Find(id);
            if (lU_TrainingCourse == null)
            {
                return HttpNotFound();
            }
            ViewBag.TrainingProgramID = new SelectList(db.LU_TrainingProgram, "TrainingProgramID", "TrainingProgramName", lU_TrainingCourse.TrainingProgramID);
            return View(lU_TrainingCourse);
        }

        // POST: TrainingCourse/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "TrainingCourseID,TrainingCourseName,TrainingProgramID,TrainingCourseCost")] LU_TrainingCourse lU_TrainingCourse)
        {
            if (ModelState.IsValid)
            {
                db.Entry(lU_TrainingCourse).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.TrainingProgramID = new SelectList(db.LU_TrainingProgram, "TrainingProgramID", "TrainingProgramName", lU_TrainingCourse.TrainingProgramID);
            return View(lU_TrainingCourse);
        }

        // GET: TrainingCourse/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LU_TrainingCourse lU_TrainingCourse = db.LU_TrainingCourse.Find(id);
            if (lU_TrainingCourse == null)
            {
                return HttpNotFound();
            }
            return View(lU_TrainingCourse);
        }

        // POST: TrainingCourse/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            LU_TrainingCourse lU_TrainingCourse = db.LU_TrainingCourse.Find(id);
            db.LU_TrainingCourse.Remove(lU_TrainingCourse);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
