using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MCITTrainingAPP.Models.AppModels
{
    public class CandidateModel
    {
        public int? CandID { get; set; }
         

        [Required(ErrorMessage = "برجاء ادخال اسم المتقدم")]
        [Display(Name = "اسم المتقدم")]
        public string CandFullName { get; set; }

        [Required(ErrorMessage = "برجاء ادخال الرقم المرجعي")]
        [StringLength(14, ErrorMessage = "الرقم المرجعي غير صحيح", MinimumLength = 14)]
        [Display(Name = "الرقم المرجعي")]
        public string CandNationalID { get; set; }

        [Required(ErrorMessage = "برجاء ادخال رقم المحمول")]
        [StringLength(11, ErrorMessage = "رقم المحمول غير صحيح", MinimumLength = 11)]
        [Display(Name = "رقم المحمول")]
        public string CandMobileNumber { get; set; }

        [Required(ErrorMessage = "برجاء ادخال البريد الالكترونى")]
        [EmailAddress(ErrorMessage = "البريد الالكترونى غير صحيح")]
        [Display(Name = "البريد الالكترونى")]
        public string CandEmail { get; set; }

        [Display(Name = "تاريخ الميلاد")]
        public DateTime? CandDOB { get; set; }

        //[Required(ErrorMessage = "برجاء ادخال المستوى التعليمى")]
        //[Display(Name = "المستوى التعليمى")]
        //public string CandEducationLevel { get; set; }

        [Required(ErrorMessage = "برجاء ادخال القطاع")]
        [Display(Name = "القطاع")]
        public string CandWorkSector { get; set; }

        [Required(ErrorMessage = "برجاء ادخال الإداره")]
        [Display(Name = "الإداره")]
        public string CandWorkDept { get; set; }

        [Required(ErrorMessage = "برجاء ادخال المسمى الوظيفى")]
        [Display(Name = "المسمى الوظيفى")]
        public string CandWorkTitle { get; set; }

        [Required(ErrorMessage = "برجاء اختيار المحافظه")]
        [Display(Name = "المحافظه")]
        public int? CandGovernorate { get; set; }

        [Required(ErrorMessage = "برجاء اختيار الجهة التابعه للمحافظه")]
        [Display(Name = "الجهة التابعه للمحافظه")]
        public int? CandSubGovernorate { get; set; }

        [Required(ErrorMessage = "برجاء اختيار الجهة")]
        [Display(Name = "الجهة")]
        public int CandSubMinistry { get; set; }
        public string CandSubMinistryName { get; set; }

        [Required(ErrorMessage = "برجاء اختيار الوزارة")]
        [Display(Name = "الوزارة")]
        public int? CandMinistry { get; set; }
        public string CandMinistryName { get; set; }

        [Required(ErrorMessage = "برجاء اختيار المبادرة")]
        [Display(Name = "المبادرة")]
        public int CandTrainingProgram { get; set; }
        public string CandTrainingProgramName { get; set; }

        [Required(ErrorMessage = "برجاء اختيار البرنامج التدريبى")]
        [Display(Name = "البرنامج التدريبى")]
        public int CandTrainingCourse { get; set; }
        public string CandTrainingCourseName { get; set; }

        [Required(ErrorMessage = "برجاء ادخال مدة البرنامج")]
        [Display(Name = "مدة البرنامج التدريبى")]
        public string CandCourseDuration { get; set; }

        [Required(ErrorMessage = "برجاء اختيار الجهه المنفذة")]
        [Display(Name = "الجهه المنفذة")]
        public int CandCourseProvider { get; set; }
        public string CandCourseProviderName { get; set; }

        [Required(ErrorMessage = "برجاء اختيار آلية التنفيذ")]
        [Display(Name = "آلية التنفيذ")]
        public int CandCourseStudyMechanism { get; set; }
        public string CandCourseStudyMechanismName { get; set; }

        [Required(ErrorMessage = "برجاء اختيار المستوى الوظيفي")]
        [Display(Name = "المستوى الوظيفي")]
        public int? CandEmploymentLevel { get; set; }
        public string CandEmploymentLevelName { get; set; }

        [Required(ErrorMessage = "برجاء اختيار الدرجه الوظيفية")]
        [Display(Name = "الدرجه الوظيفية")]
        public int? CandEmploymentDegree { get; set; }
        public string CandEmploymentDegreeName { get; set; }

        [Display(Name = "تاريخ البدايه")]
        public DateTime? CandStartDate { get; set; }

        [Display(Name = "تاريخ النهايه")]
        public DateTime? CandEndDate { get; set; }

        public Guid? CandInfoGUID { get; set; }

        public List<CandidateModel> Profiles { get; set; }
         
        
        public bool InitialLoad { get; set; } = false;




        [Display(Name = "العام المالي")]
        public int CandFiscalYear { get; set; }
        public string CandFiscalYearName { get; set; }

        [Display(Name = "منتقل")]
        public bool? CandCapitalStatus { get; set; }

 


  

        [Display(Name = "النوع")]
        public string Gender { get; set; }


         

        [Required(ErrorMessage = "برجاء اختيار البرنامج التدريبى")]
        [Display(Name = "البرنامج التدريبى")]
        public int? Cand_DTU_ProgramID { get; set; }


        [Required(ErrorMessage = "برجاء اختيار الوظيفة")]
        [Display(Name = "الوظيفة")]
        public int? Cand_DTU_JobID { get; set; }


 

        [Display(Name = "رقم الموظف")]
        public int EmpID { get; set; }





    }
}