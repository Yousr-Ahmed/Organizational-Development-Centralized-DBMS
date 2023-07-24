using MCITTrainingAPP.DataBaseServices;
using MCITTrainingAPP.Models.AppModels;
using MCITTrainingAPP.Models.EF;
using MCITTrainingAPP.Models.ViewModels;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Globalization;
using System.Linq;
using System.Web.Mvc;

namespace MCITTrainingAPP.Controllers
{
    [Authorize(Roles = "Administrator")]
    public class UploadController : Controller
    {
        MCITTrainingDBEntities db = new MCITTrainingDBEntities();
        ProjectHelper ProjectHelper = new ProjectHelper();

        CandidateService _candidateService = new CandidateService();

        public ActionResult Index()
        {
            UploadModel vm = new UploadModel();
            return View(vm);
        }



        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Index(UploadModel uploadModel)
        {
            UploadModel vm = new UploadModel(); 
            var candTemp = new CandidateModel();
            if (ModelState.IsValid)
            {
                try
                {

                    string path = Server.MapPath("~/Uploads/" + uploadModel.Uploadedfile.FileName);
                    uploadModel.Uploadedfile.SaveAs(path);

                    string excelConnectionString = @"Provider='Microsoft.ACE.OLEDB.12.0';Data Source='" + path + "';Extended Properties='Excel 12.0 Xml;IMEX=1'";
                    OleDbConnection excelConnection = new OleDbConnection(excelConnectionString);


                    //Sheet Name
                    excelConnection.Open();
                    //tableName = excelConnection.GetSchema("Tables").Rows[0]["TABLE_NAME"].ToString();

                    excelConnection.Close();
                    //End

                    //Putting Excel Data in DataTable
                    DataTable dataTable = new DataTable();
                    OleDbDataAdapter adapter = new OleDbDataAdapter("select * from [Sheet1$]", excelConnection);
                    //OleDbDataAdapter adapter = new OleDbDataAdapter("Select * from [" + tableName + "]", excelConnection);
                    adapter.Fill(dataTable);
                    //End

                    vm.UploadedfileData = dataTable;
                    vm.AddedCandidatesList = new List<string>();
                    vm.AlreadyAddedCandidatesList = new List<AlreadyAddedCandidatesList>();
                    vm.ExcelInvalidWithReasonsList = new List<ExcelInvalidWithReasons>();


                    if (dataTable.Rows.Count > 0)
                    {
                        foreach (DataRow row in dataTable.Rows)
                        {
                            var nid = row.ItemArray[2].ToString();

                            candTemp.CandNationalID = nid;
                            candTemp.CandFullName = row.ItemArray[1].ToString().Trim(); ;

                            string reason = CheckRowValuesIsValidForMin(row);
                            if (reason != "")
                            {
                                ExcelInvalidWithReasons InvalidCand = new ExcelInvalidWithReasons();
                                InvalidCand.CandSerial = row.ItemArray[0].ToString().Trim();
                                InvalidCand.CandFullName = row.ItemArray[1].ToString().Trim();
                                InvalidCand.CandNationalID = nid;
                                InvalidCand.Reason = reason;
                                vm.ExcelInvalidWithReasonsList.Add(InvalidCand);
                                continue;
                            }


                            string ExcelMinistryName = row.ItemArray[5].ToString().Trim();
                            string ExcelSubMinistry = row.ItemArray[6].ToString().Trim();
                            string ExcelEmploymentDegree = row.ItemArray[11].ToString().Trim();
                            string ExcelTrainingProgram = row.ItemArray[12].ToString().Trim();
                            string ExcelTrainingCourse = row.ItemArray[13].ToString().Trim();
                            string ExcelCourseProvider = row.ItemArray[17].ToString().Trim();
                            string ExcelCourseStudyMechanism = row.ItemArray[18].ToString().Trim();
                            string ExcelFiscalYear = row.ItemArray[19].ToString().Trim();
                            


                            var cand = new CandidateModel(); 
                            cand.CandFullName = row.ItemArray[1].ToString().Trim();
                            cand.CandNationalID = nid.Trim();
                            cand.CandMobileNumber = row.ItemArray[3].ToString().Trim();
                            cand.CandEmail = row.ItemArray[4].ToString().Trim();
                            cand.CandMinistry = Convert.ToInt32(db.TBL_Ministries.FirstOrDefault(x => x.MinistryName == ExcelMinistryName).MinistryID);
                            cand.CandSubMinistry = Convert.ToInt32(db.TBL_SubMinistry.FirstOrDefault(x => x.SubMinistryName == ExcelSubMinistry).SubMinistryID);
                            cand.CandWorkSector = row.ItemArray[7].ToString().Trim();
                            cand.CandWorkDept = row.ItemArray[8].ToString().Trim();
                            cand.CandWorkTitle = row.ItemArray[9].ToString().Trim();
                            cand.CandEmploymentDegree = Convert.ToInt32(db.LU_EmploymentDegree.FirstOrDefault(x => x.EmploymentDegreeName == ExcelEmploymentDegree).EmploymentDegreeID);
                            cand.CandTrainingProgram = Convert.ToInt32(db.LU_TrainingProgram.FirstOrDefault(x => x.TrainingProgramName == ExcelTrainingProgram).TrainingProgramID);
                            cand.CandTrainingCourse = Convert.ToInt32(db.LU_TrainingCourse.FirstOrDefault(x => x.TrainingCourseName == ExcelTrainingCourse && x.TrainingProgramID == cand.CandTrainingProgram).TrainingCourseID);
                            cand.CandCourseDuration = row.ItemArray[14].ToString();
                            cand.CandCourseProvider = Convert.ToInt32(db.LU_CourseProvider.FirstOrDefault(x => x.CourseProviderName == ExcelCourseProvider).CourseProvideID);
                            cand.CandCourseStudyMechanism = Convert.ToInt32(db.LU_StudyMechanism.FirstOrDefault(x => x.StudyMechanismName == ExcelCourseStudyMechanism).StudyMechanismID);
                            cand.CandFiscalYear = Convert.ToInt32(db.TBL_FiscalYear.FirstOrDefault(x => x.FiscalYear == ExcelFiscalYear).FiscalYearID);


                            string CandStartDate = row.ItemArray[15].ToString().Trim();
                            string CandEndDate = row.ItemArray[16].ToString().Trim();

                            //if ((CandStartDate != null && !string.IsNullOrEmpty(CandStartDate)) && (CandEndDate != null && !string.IsNullOrEmpty(CandEndDate)))
                            //{
                            //    if (ProjectHelper.CheckDate(CandStartDate) && ProjectHelper.CheckDate(CandEndDate))
                            //    {
                            if (CandStartDate != null && !string.IsNullOrEmpty(CandStartDate)) cand.CandStartDate = Convert.ToDateTime(CandStartDate);
                            if (CandEndDate != null && !string.IsNullOrEmpty(CandEndDate)) cand.CandEndDate = Convert.ToDateTime(CandEndDate);
                            //    }
                            //}


                        

                            if (uploadModel.CandCapitalStatus != null)
                            {
                                cand.CandCapitalStatus = uploadModel.CandCapitalStatus;
                            }
                            else
                            {
                                ExcelInvalidWithReasons InvalidCand = new ExcelInvalidWithReasons();
                                InvalidCand.CandSerial = row.ItemArray[0].ToString().Trim();
                                InvalidCand.CandFullName = row.ItemArray[1].ToString().Trim();
                                InvalidCand.CandNationalID = nid; 
                                InvalidCand.Reason = "لم تقم بإختيار منتقل ام غير منتقل";
                                vm.ExcelInvalidWithReasonsList.Add(InvalidCand);
                                continue;
                            }



                            if (_candidateService.CheckCandidateInCourse(cand))
                            {
                                AlreadyAddedCandidatesList AlreadyAddedCand = new AlreadyAddedCandidatesList();
                                AlreadyAddedCand.CandSerial = row.ItemArray[0].ToString().Trim();
                                AlreadyAddedCand.CandFullName = row.ItemArray[1].ToString().Trim();
                                AlreadyAddedCand.CandNationalID = nid; 
                                AlreadyAddedCand.Notes = "تمت الإضافة لنفس البرنامج من قبل";
                                vm.AlreadyAddedCandidatesList.Add(AlreadyAddedCand);
                                continue;
                            }
                            else
                            {
                               

                                    var added = _candidateService.AddCandidateFromExcel(cand);

                                    if (added)
                                    {
                                        vm.AddedCandidatesList.Add(nid);
                                    }
                                    else
                                    {
                                        ExcelInvalidWithReasons InvalidCand = new ExcelInvalidWithReasons();
                                        InvalidCand.CandSerial = row.ItemArray[0].ToString().Trim();
                                        InvalidCand.CandFullName = row.ItemArray[1].ToString().Trim();
                                        InvalidCand.CandNationalID = nid; 
                                        InvalidCand.Reason = "لم تتم الإضافة لسبب غير معلوم";
                                        vm.ExcelInvalidWithReasonsList.Add(InvalidCand);
                                        continue;
                                    }
                               



                            }


                        }



                    }
                }

                catch (Exception ex)
                {
                    ExcelInvalidWithReasons InvalidCand = new ExcelInvalidWithReasons();
                    InvalidCand.CandNationalID = candTemp.CandNationalID;
                    InvalidCand.CandFullName = candTemp.CandFullName;
                    InvalidCand.Reason = "خطأ غير معلوم" + "      Ex:" + ex.Message.ToString();
                    if (InvalidCand != null)
                        vm.ExcelInvalidWithReasonsList.Add(InvalidCand);
                    return View(vm);
                }

            }
            return View(vm);
        }

        public string CheckRowValuesIsValidForMin(DataRow row)
        {
            string CandFullName = row.ItemArray[1].ToString().Trim();//CandFullName
            string CandNationalID = row.ItemArray[2].ToString().Trim();//CandNationalID
            string CandMobileNumber = row.ItemArray[3].ToString().Trim();//CandMobileNumber
            string CandEmail = row.ItemArray[4].ToString().Trim();//CandEmail 
            string CandMinistry = row.ItemArray[5].ToString().Trim();//CandMinistry
            string CandSubMinistry = row.ItemArray[6].ToString().Trim();//CandSubMinistry
            string CandWorkSector = row.ItemArray[7].ToString().Trim();//CandWorkSector
            string CandWorkDept = row.ItemArray[8].ToString().Trim();//CandWorkDept
            string CandWorkTitle = row.ItemArray[9].ToString().Trim();//CandWorkTitle
                                                                      //string CandEmploymentLevel = row.ItemArray[10].ToString().Trim();//CandEmploymentLevel
            string CandEmploymentDegree = row.ItemArray[11].ToString().Trim();//CandEmploymentDegree 
            string CandTrainingProgram = row.ItemArray[12].ToString().Trim();//CandTrainingProgram
            string CandTrainingCourse = row.ItemArray[13].ToString().Trim();//TrainingCourses 
            string CandCourseDuration = row.ItemArray[14].ToString().Trim();//CandCourseDuration
            string CandStartDate = row.ItemArray[15].ToString().Trim();//CandStartDate
            string CandEndDate = row.ItemArray[16].ToString().Trim();//CandEndDate
            string CandCourseProvider = row.ItemArray[17].ToString().Trim();//CandCourseProvider
            string CandCourseStudyMechanism = row.ItemArray[18].ToString().Trim();//CandCourseStudyMechanism
            string CandFiscalYear = row.ItemArray[19].ToString().Trim();//CandFiscalYear


            if (CandFullName == null || string.IsNullOrEmpty(CandFullName)) return "لم تدخل إسم المتدرب";//CandFullName
            if (CandNationalID == null || string.IsNullOrEmpty(CandNationalID)) return "لم تدخل الرقم المرجعي";//CandNationalID 
                                                                                                               //if (CandMobileNumber == null || string.IsNullOrEmpty(CandMobileNumber)) return "لم تدخل الموبايل";//CandMobileNumber
                                                                                                               //if (CandEmail == null || string.IsNullOrEmpty(CandEmail)) return "لم تدخل الإيميل";//CandEmail 
                                                                                                               //if (CandWorkSector == null || string.IsNullOrEmpty(CandWorkSector)) return "لم تدخل القطاع";//CandWorkSector
                                                                                                               //if (CandWorkDept == null || string.IsNullOrEmpty(CandWorkDept)) return "لم تدخل الإدارة";//CandWorkDept
                                                                                                               //if (CandWorkTitle == null || string.IsNullOrEmpty(CandWorkTitle)) return "لم تدخل المسمي الوظيفي";//CandWorkTitle
                                                                                                               //if (CandCourseDuration == null || string.IsNullOrEmpty(CandCourseDuration)) return "لم تدخل المدة";//CandCourseDuration

            //if (CandNationalID.Length != 14) return "يجب أن يكون الرقم المرجعي 14 رقم"; //CandNationalID

            if (CandMinistry == null || string.IsNullOrEmpty(CandMinistry)) return " لم تدخل الوزارة " + CandMinistry;//CandMinistry(checkNull)   
            TBL_Ministries Ministry = db.TBL_Ministries.FirstOrDefault(x => x.MinistryName == CandMinistry);
            if (Ministry == null) return "لا توجد وزارة مسجلة بهذا الإسم" + "(" + CandMinistry + ")";//CandTrainingProgram(checkDBExists)

            if (CandSubMinistry == null || string.IsNullOrEmpty(CandSubMinistry)) return " لم تدخل الجهة التابعة للوزارة " + CandSubMinistry;//CandSubMinistry(checkNull)
            if (db.TBL_SubMinistry.FirstOrDefault(x => x.SubMinistryName == CandSubMinistry && x.MinistryID == Ministry.MinistryID) == null) return "لا توجد جهة تابعة للوزارة مسجلة بهذا الإسم" + "(" + CandSubMinistry + ")";//CandSubMinistry(checkDBExists)

            if (CandEmploymentDegree == null || string.IsNullOrEmpty(CandEmploymentDegree)) return "لم تدخل الدرجة الوظيفية";//CandEmploymentDegree(checkNull)
            if (db.LU_EmploymentDegree.FirstOrDefault(x => x.EmploymentDegreeName == CandEmploymentDegree) == null) return " لا توجد درجة وظيفية مسجلة بهذا الإسم " + "(" + CandEmploymentDegree + ")";//CandEmploymentDegree(checkDBExists)

            if (CandTrainingProgram == null || string.IsNullOrEmpty(CandTrainingProgram)) return " لم تدخل البرنامج التدريبي " + CandTrainingProgram;//CandTrainingProgram(checkNull)
            LU_TrainingProgram TrainingProgram = db.LU_TrainingProgram.FirstOrDefault(x => x.TrainingProgramName == CandTrainingProgram);
            if (TrainingProgram == null) return "لا يوجد برنامج تدريبي مسجل بهذا الإسم" + "(" + CandTrainingProgram + ")";//CandTrainingProgram(checkDBExists)

            if (CandTrainingCourse == null || string.IsNullOrEmpty(CandTrainingCourse)) return "لم تدخل اسم الكورس";//TrainingCourses(checkNull)
            if (db.LU_TrainingCourse.FirstOrDefault(x => x.TrainingCourseName == CandTrainingCourse && x.TrainingProgramID == TrainingProgram.TrainingProgramID) == null) return " لا يوجد كورس مسجل بهذا الإسم " + "(" + CandTrainingCourse + ")";//TrainingCourses(checkDBExists)


            if (CandCourseProvider == null || string.IsNullOrEmpty(CandCourseProvider)) return "لم تدخل الجهة المنفذة";//CandCourseProvider(checkNull)
            if (db.LU_CourseProvider.FirstOrDefault(x => x.CourseProviderName == CandCourseProvider) == null) return " لا توجد جهة منفذة مسجلة بهذا الإسم " + "(" + CandCourseProvider + ")";//CandCourseProvider(checkDBExists)

            if (CandCourseStudyMechanism == null || string.IsNullOrEmpty(CandCourseStudyMechanism)) return "لم تدخل موقع التنفيذ";//CandCourseStudyMechanism(checkNull)
            if (db.LU_StudyMechanism.FirstOrDefault(x => x.StudyMechanismName == CandCourseStudyMechanism) == null) return " لا يوجد موقع للتنفيذ مسجل بهذا الإسم " + "(" + CandCourseStudyMechanism + ")";//CandCourseStudyMechanism(checkDBExists)

            //if (CandFiscalYear == null || string.IsNullOrEmpty(CandFiscalYear)) return "لم تدخل العام المالي";//CandFiscalYear(checkNull)
            if (CandFiscalYear != null && !string.IsNullOrEmpty(CandFiscalYear)) if (db.TBL_FiscalYear.FirstOrDefault(x => x.FiscalYear == CandFiscalYear) == null) return "لا يوجد عام مالي مسجل بهذا الإسم" + "(" + CandFiscalYear + ")";//CandFiscalYear(checkDBExists)

            //if ((CandStartDate != null && !string.IsNullOrEmpty(CandStartDate)) && (CandEndDate == null || string.IsNullOrEmpty(CandEndDate))) return "لا يمكن إدخال تاريخ بداية الكورس و ترك تاريخ إنتهائه و العكس صحيح";

            if ((CandStartDate == null && string.IsNullOrEmpty(CandStartDate)) && (CandEndDate != null || !string.IsNullOrEmpty(CandEndDate))) return "لا يمكن إدخال تاريخ إنتهاء الكورس و ترك تاريخ البداية فارغ";




            if (CandStartDate != null && !string.IsNullOrEmpty(CandStartDate))
            {
                //if (ProjectHelper.IsValidDate(CandStartDate) == false)
                //{
                //    return " خطأ في تاريخ بداية الكورس";
                //}

                if ((CandStartDate != null && !string.IsNullOrEmpty(CandStartDate)) && (CandEndDate != null && !string.IsNullOrEmpty(CandEndDate)))
                {
                    //if (ProjectHelper.IsValidDate(CandEndDate) == false)
                    //{
                    //    return "خطأ في تاريخ إنتهاء الكورس";
                    //}
                    if (ProjectHelper.IsValidSqlDateTimeNative(CandStartDate) == false) return "تاريخ بداية الكورس غير صحيح";

                    if (ProjectHelper.IsValidSqlDateTimeNative(CandEndDate) == false) return "تاريخ نهاية الكورس غير صحيح";

                    if (DateTime.Parse(CandStartDate, CultureInfo.InvariantCulture) > DateTime.Parse(CandEndDate, CultureInfo.InvariantCulture))
                    {
                        return "تاريخ بداية الكورس أكبر من النهاية";
                    }
                }
            }


            return "";
        }


    }
}