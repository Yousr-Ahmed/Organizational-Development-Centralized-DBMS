using MCITTrainingAPP.Models.AppModels;
using MCITTrainingAPP.Models.EF;
using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Web;

namespace MCITTrainingAPP.DataBaseServices
{
    public class CandidateService
    {
        MCITTrainingDBEntities ent = new MCITTrainingDBEntities();


        public int CandsCount()
        {
           return ent.TBL_CandidatesInfo.Count();
        }
        public int SubMinistryCount()
        {
           return ent.TBL_SubMinistry.Count();
        }

        public int TrainingCoursesCount()
        {
           return ent.LU_TrainingCourse.Count();
        }
        public int CertCount()
        {
           return ent.TBL_Candidates_Courses.Count();
        }

        public List<spCandNumPerMinistry_SubMinistry_Result> CandNumPerMinistry_SubMinistry()
        {
           return ent.spCandNumPerMinistry_SubMinistry().ToList();
        }
        
        public List<spCanNumPerMechanism_Result> CandNumPerMechanism()
        {
           return ent.spCanNumPerMechanism().ToList();
        }
        public List<spCandPerFiscalYear_Result> CandPerFiscalYear()
        {
           return ent.spCandPerFiscalYear().ToList();
        }
        public List<spCanNumPerProvider_Result> CanNumPerProvider()
        {
           return ent.spCanNumPerProvider().ToList();
        }
        public List<spCourseNumPerProvider_Result> CourseNumPerProvider()
        {
           return ent.spCourseNumPerProvider().ToList();
        }
        public List<spCandNumPerCourse_Result> CandNumPerCourse()
        {
           return ent.spCandNumPerCourse().ToList();
        }
        public List<spCandNumPerProgram_Result> CandNumPerProgram()
        {
           return ent.spCandNumPerProgram().ToList();
        }
        public List<spCanNumPerLevel_Result> NCandidatePerLevel()
        {
           return ent.spCanNumPerLevel().ToList();
        }




        public bool CheckCandidateInCourse(CandidateModel cand)
        {
            try
            {
                if ( 
                        cand.CandTrainingProgram == 0 
                    ||  cand.CandTrainingCourse == 0
                    ||  string.IsNullOrWhiteSpace(cand.CandNationalID)
                   )
                {
                    return false;
                }
                 
                TBL_Candidates_Courses cand_Ministry =
                        ent.TBL_Candidates_Courses.FirstOrDefault(
                            s => s.TBL_CandidatesInfo.CandNationalID == cand.CandNationalID
                            && s.LU_TrainingCourse.TrainingProgramID == cand.CandTrainingProgram
                        && s.CandTrainingCourse == cand.CandTrainingCourse 
                            );
                    if (cand_Ministry == null) return false;
  
                return true;
            }
            catch (Exception ex)
            {

                return false;
            }
        }

        public bool CheckNationalIDExists(string nationalID)
        {
            try
            {
                var cand = ent.TBL_CandidatesInfo.FirstOrDefault(s => s.CandNationalID == nationalID);

                if (cand == null)
                {
                    return false;
                }

                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool AddCandidateFromExcel(CandidateModel candidate)
        {
            try
            {
                TBL_CandidatesInfo candInfo = new TBL_CandidatesInfo();

                #region Cand Validations
                if (candidate == null)
                {
                    return false;
                }
                #endregion

                #region Adding CandInfo

               
                if (!CheckNationalIDExists(candidate.CandNationalID))
                {
                    candInfo.CandFullName = candidate.CandFullName;
                    candInfo.CandNationalID = candidate.CandNationalID;
                    candInfo.CandMobileNumber = candidate.CandMobileNumber;
                    candInfo.CandEmail = candidate.CandEmail;
                   



                    var result_For_Cand = ent.TBL_CandidatesInfo.Add(candInfo);
                    ent.SaveChanges();

                    if (result_For_Cand == null || result_For_Cand.CandID <= 0)
                    {
                        return false;
                    }
                }
                #endregion

                #region Adding CandTrainingInfo
                TBL_Candidates_Courses candMinistry = new TBL_Candidates_Courses();
            

                    candMinistry = new TBL_Candidates_Courses()
                    {
                        CandCourseDuration = candidate.CandCourseDuration,
                        CandCourseProvider = candidate.CandCourseProvider ,
                        CandCourseStudyMechanism = candidate.CandCourseStudyMechanism,
                        CandEmploymentDegree = candidate.CandEmploymentDegree,
                        CandSubMinistryID = candidate.CandSubMinistry ,
                        CandWorkTitle = candidate.CandWorkTitle,
                        CandWorkDept = candidate.CandWorkDept,
                        CandWorkSector = candidate.CandWorkSector,
                        CandTrainingCourse = candidate.CandTrainingCourse ,
                        CandFiscalYearID = candidate.CandFiscalYear ,
                         CandCapitalStatus = candidate.CandCapitalStatus,
                         CandInfoID = ent.TBL_CandidatesInfo.FirstOrDefault(x => x.CandNationalID == candidate.CandNationalID).CandID
                    };

                    if (candidate.CandStartDate.HasValue && candidate.CandStartDate != DateTime.MinValue)
                    {
                        candMinistry.CandStartDate = candidate.CandStartDate;
                    }

                    if (candidate.CandEndDate.HasValue && candidate.CandEndDate != DateTime.MinValue)
                    {
                        candMinistry.CandEndDate = candidate.CandEndDate;
                    }

                    var resultForCand = ent.TBL_Candidates_Courses.Add(candMinistry);
                    ent.SaveChanges();

                    if (resultForCand == null || resultForCand.CandID <= 0)
                    {
                        return false;
                    }
               

               
                #endregion

                return true;
            }
            catch (DbEntityValidationException e)
            {
                foreach (var eve in e.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (var ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }


    }
}