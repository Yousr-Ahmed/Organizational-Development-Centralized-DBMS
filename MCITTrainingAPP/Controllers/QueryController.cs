using ClosedXML.Excel;
using MCITTrainingAPP.Models.EF;
using MCITTrainingAPP.Models.ViewModels;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MCITTrainingAPP.Controllers
{
    [Authorize]
    public class QueryController : Controller
    {
        MCITTrainingDBEntities db = new MCITTrainingDBEntities();

        public ActionResult CandInfoQuery()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CandInfoQuery(EmployeeFormValuesModel Emp)
        {
            var Query = db.TBL_CandidatesInfo.AsQueryable();

            if (Emp.NatID != null)
            {
                Query = db.TBL_CandidatesInfo.Where(x => x.CandNationalID == Emp.NatID);
            }
            if (Emp.name != null)
            {
                Query = db.TBL_CandidatesInfo.Where(x => x.CandFullName.Contains(Emp.name));
            }
            Session["CandInfo_model"] = Query.ToList();
            return View(Query.ToList());
        }


        public ActionResult CandidateCoursesQuery()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CandidateCoursesQuery(EmployeeFormValuesModel Emp)
        {

            var QueryRes = db.TBL_Candidates_Courses.Where(x => x.TBL_CandidatesInfo.CandNationalID == Emp.NatID).ToList();
            Session["Candidate_Courses"] = QueryRes;
            return View(QueryRes);
        }

        #region PDFCoursesUsingRotativa


        [Authorize]
        public ActionResult CoursesReportPDF()
        {
            if (Session["Candidate_Courses"] == null) return null;
            List<TBL_Candidates_Courses> model = Session["Candidate_Courses"] as List<TBL_Candidates_Courses>;

            string footer = "--footer-center \"Printed on: " + DateTime.Now.Date.ToString("MM/dd/yyyy") + "  Page: [page]/[toPage]\"" + " --footer-line --footer-font-size \"9\" --footer-spacing 6 --footer-font-name \"calibri light\"";

            //Show View as PDF
            return new Rotativa.ViewAsPdf("Rotativa/CandidateCoursesQuery_PDF", model)
            {
                FileName = "Candidate_Courses.pdf",
                PageMargins = new Rotativa.Options.Margins(10, 10, 10, 10),
                MinimumFontSize = 10,
                PageSize = Rotativa.Options.Size.A4,
                PageOrientation = Rotativa.Options.Orientation.Landscape,
                //CustomSwitches = "–page-offset 0 –footer-center [page] –footer-font-size 8"
                //CustomSwitches = customSwitches,
                CustomSwitches = footer
            };

        }

        #endregion




        #region ExcelCoursesUsingClosedXML



        [Authorize] 
        public FileResult CoursesExportToExcel()
        {
            try
            {
                if (Session["Candidate_Courses"] == null)
                    return File(new MemoryStream(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "NoResult");
                
                List<TBL_Candidates_Courses> Candidates_CoursesViewModel = Session["Candidate_Courses"] as List<TBL_Candidates_Courses>;

              
                DataTable dtMinistry = null;

                var wb = new XLWorkbook();
                wb.RightToLeft = true;
                wb.Style = XLWorkbook.DefaultStyle;


               

                if (Candidates_CoursesViewModel != null)
                {
                    dtMinistry = new DataTable("الوزارات والهيئات");
                    dtMinistry.Columns.AddRange(new DataColumn[10] {
                                            new DataColumn("الأسم (رباعى)"),
                                            new DataColumn("الرقم المرجعي"),
                                            new DataColumn("البريد الالكترونى"),
                                            new DataColumn("رقم المحمول"),
                                            new DataColumn("برامج تنمية وبناء القدرات الرقمية"),
                                           new DataColumn("البرنامج التدريبي "),
                                            new DataColumn("تاريخ البداية"),
                                            new DataColumn("تاريخ الإنتهاء "),
                                            new DataColumn("آلية التنفيذ"),
                                            new DataColumn("العام المالي"),
                    });

                    foreach (var candidate in Candidates_CoursesViewModel)
                    {
                        var CandFullName = candidate.TBL_CandidatesInfo.CandFullName ?? "--";
                        var CandNationalID = candidate.TBL_CandidatesInfo.CandNationalID ?? "--";
                        var CandEmail = candidate.TBL_CandidatesInfo.CandEmail ?? "--";
                        var CandMobileNumber = candidate.TBL_CandidatesInfo.CandMobileNumber ?? "--";
                        var programName = candidate.LU_TrainingCourse.LU_TrainingProgram.TrainingProgramName ?? "--";
                        var courseName = candidate.LU_TrainingCourse.TrainingCourseName ?? "--";
                        var StartDate = candidate.CandStartDate == null ? null : candidate.CandStartDate.Value.ToString("yyyy/MM/dd");
                        var EndDate = candidate.CandEndDate == null ? null : candidate.CandEndDate.Value.ToString("yyyy/MM/dd");
                        var StudyMechanismName = candidate.LU_StudyMechanism.StudyMechanismName ?? "--";
                        var FiscalYear = candidate.TBL_FiscalYear.FiscalYear ?? "--";

                        dtMinistry.Rows.Add(
                        CandFullName,
                        CandNationalID,
                        CandEmail,
                        CandMobileNumber,
                        programName,
                        courseName,    
                        StartDate,
                        EndDate,
                        StudyMechanismName,
                        FiscalYear);


                    }
                }
             
                var wsMin = wb.Worksheets.Add(dtMinistry);
                // You can also adjust all rows/columns in one shot
                wsMin.Rows().AdjustToContents();
                wsMin.Columns().AdjustToContents();


                using (MemoryStream stream = new MemoryStream())
                {
                    wb.SaveAs(stream);
                    return File(stream.ToArray(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", $"MCIT_Capacity_{DateTime.Now.ToLongDateString().Replace(" ", "")}.xlsx");
                }


            }
            catch (Exception ex)
            {
                return null;
            }
        }

        #endregion



        #region PDFCandUsingRotativa
        [Authorize]
        public ActionResult CandReportPDF()
        {
            if (Session["CandInfo_model"] == null) return null;
            List<TBL_CandidatesInfo> model = Session["CandInfo_model"] as List<TBL_CandidatesInfo>;

            string footer = "--footer-center \"Printed on: " + DateTime.Now.Date.ToString("MM/dd/yyyy") + "  Page: [page]/[toPage]\"" + " --footer-line --footer-font-size \"9\" --footer-spacing 6 --footer-font-name \"calibri light\"";

            //Show View as PDF
            return new Rotativa.ViewAsPdf("Rotativa/CandInfoQuery_PDF", model)
            {
                FileName = "Candidate_Info.pdf",
                PageMargins = new Rotativa.Options.Margins(10, 10, 10, 10),
                MinimumFontSize = 10,
                PageSize = Rotativa.Options.Size.A4,
                PageOrientation = Rotativa.Options.Orientation.Landscape,
                //CustomSwitches = "–page-offset 0 –footer-center [page] –footer-font-size 8"
                //CustomSwitches = customSwitches,
                CustomSwitches = footer
            };

        }
        #endregion


        #region ExcelCandUsingClosedXML



        [Authorize]
        public FileResult CandInfoExportToExcel()
        {
            try
            {
                if (Session["CandInfo_model"] == null)
                    return File(new MemoryStream(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "NoResult");

                List<TBL_CandidatesInfo> Candidates_CandInfViewModel = Session["CandInfo_model"] as List<TBL_CandidatesInfo>;


                DataTable dtCand = null;

                var wb = new XLWorkbook();
                wb.RightToLeft = true;
                wb.Style = XLWorkbook.DefaultStyle;




                if (Candidates_CandInfViewModel != null)
                {
                    dtCand = new DataTable("الوزارات والهيئات");
                    dtCand.Columns.AddRange(new DataColumn[4] {
                                            new DataColumn("الأسم رباعى"),
                                            new DataColumn("الرقم القومي"),
                                            new DataColumn("البريد الالكترونى"),
                                            new DataColumn("رقم المحمول")
                                            
                    });

                    foreach (var candid in Candidates_CandInfViewModel)
                    {
                        var CandFullName = candid.CandFullName ?? "--";
                        var CandNationalID = candid.CandNationalID ?? "--";
                        var CandEmail = candid.CandEmail ?? "--";
                        var CandMobileNumber = candid.CandMobileNumber ?? "--";


                        dtCand.Rows.Add(
                        CandFullName,
                        CandNationalID,
                        CandEmail,
                        CandMobileNumber
                        );
                    }
                }

                var wsMin = wb.Worksheets.Add(dtCand);
                // You can also adjust all rows/columns in one shot
                wsMin.Rows().AdjustToContents();
                wsMin.Columns().AdjustToContents();


                using (MemoryStream stream = new MemoryStream())
                {
                    wb.SaveAs(stream);
                    return File(stream.ToArray(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", $"MCIT_Capacity_{DateTime.Now.ToLongDateString().Replace(" ", "")}.xlsx");
                }


            }
            catch (Exception ex)
            {
                return null;
            }
        }

        #endregion

    }
}