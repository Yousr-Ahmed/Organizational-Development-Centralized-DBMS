using MCITTrainingAPP.Models.AppModels;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data;
using System.Web;

namespace MCITTrainingAPP.Models.ViewModels
{
    public class UploadModel
    {
      

        [Required(ErrorMessage = "برجاء اختيار ملف المتدربيين")]
        [Display(Name = "ملف المتدربيين")] 
        public HttpPostedFileBase Uploadedfile { get; set; }

        public DataTable UploadedfileData { get; set; }

         
        public int? AddedCandidatesList_Count { get; set; }
        public List<string> AddedCandidatesList { get; set; }

        public int? AlreadyAddedCandidatesList_Count { get; set; }
        public List<AlreadyAddedCandidatesList> AlreadyAddedCandidatesList { get; set; }

        public int? ExcelInvalidWithReasons_Count { get; set; }
        public List<ExcelInvalidWithReasons> ExcelInvalidWithReasonsList { get; set; }

         
        public string SuccessMessage { get; set; }

        public bool InitialLoad { get; set; } = false;


         
        [Display(Name = "منتقل")]
        public bool? CandCapitalStatus { get; set; }

    }


}
