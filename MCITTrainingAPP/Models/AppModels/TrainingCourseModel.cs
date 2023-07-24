using System;


namespace MCITTrainingAPP.Models.AppModels
{
    public class TrainingCourseModel
    {
        public int TrainingCourseID { get; set; } 
        public string TrainingCourseName { get; set; }
        public TrainingProgramModel TrainingProgram { get; set; }
        public DateTime? TrainingProgramStartDate { get; set; }
        public DateTime? TrainingProgramEndDate { get; set; }
        public decimal? TrainingCourseCost { get; set; }
    }
}
