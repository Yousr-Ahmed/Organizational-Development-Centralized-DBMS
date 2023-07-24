using MCITTrainingAPP.Models.AppModels;
using MCITTrainingAPP.Models.EF;
using System;
using System.Collections.Generic;
using System.Linq;

namespace MCITTrainingAPP.DataBaseServices
{
    public class TrainingCourseService
    {

        MCITTrainingDBEntities ent = new MCITTrainingDBEntities();
        public List<TrainingCourseModel> GetTrainingCourses(bool initialLoad = false)
        {
            try
            {
                var trainingCourseModel = new List<TrainingCourseModel>();

                if (!initialLoad)
                {
                    var trainingCourse = ent.LU_TrainingCourse.ToList();

                    if (trainingCourse == null)
                    {
                        return null;
                    }

                    trainingCourseModel = trainingCourse.Select(s => new TrainingCourseModel()
                    {
                        TrainingCourseID = s.TrainingCourseID, 
                        TrainingCourseName = s.TrainingCourseName, 
                        TrainingCourseCost = s.TrainingCourseCost,
                        TrainingProgram = new TrainingProgramModel()
                        {
                            TrainingProgramID = s.LU_TrainingProgram.TrainingProgramID, 
                            TrainingProgramName = s.LU_TrainingProgram.TrainingProgramName
                        }, 
                    }).OrderBy(o => o.TrainingCourseName).ToList();

                }

                var trainingCoursesTip = new TrainingCourseModel()
                {
                    TrainingCourseID = 0,
                    TrainingCourseName = "--- اختيار البرنامج التدريبى ---"
                };

                trainingCourseModel.Insert(0, trainingCoursesTip);

                return trainingCourseModel;
            }
            catch (Exception)
            {

                return null;
            }

        }

        public List<TrainingCourseModel> GetTrainingCoursesOfProject(int? projectID)
        {
            try
            {
                if (projectID == null) return null;
                var trainingCourse = ent.LU_TrainingCourse.Where(x => x.TrainingProgramID == projectID).ToList();

                if (trainingCourse == null)
                {
                    return null;
                }

                var trainingCourseModel = trainingCourse.Select(s => new TrainingCourseModel()
                {
                    TrainingCourseID = s.TrainingCourseID,
                    TrainingCourseName = s.TrainingCourseName,
                    TrainingCourseCost = s.TrainingCourseCost,
                    TrainingProgram = new TrainingProgramModel()
                    {
                        TrainingProgramID = s.LU_TrainingProgram.TrainingProgramID,
                        TrainingProgramName = s.LU_TrainingProgram.TrainingProgramName
                    }
                }).OrderBy(o => o.TrainingCourseName).ToList();

                var trainingCoursesTip = new TrainingCourseModel()
                {
                    TrainingCourseID = 0,
                    TrainingCourseName = "--- اختيار البرنامج التدريبى ---"
                };

                trainingCourseModel.Insert(0, trainingCoursesTip);

                return trainingCourseModel;
            }
            catch (Exception)
            {

                return null;
            }

        }




















        public List<TrainingCourseModel> GetCoursesByProgramID(int? projectID)
        {
            try
            {
                if (projectID == null) return null;
                var trainingCourse = ent.LU_TrainingCourse.Where(x => x.TrainingProgramID == projectID).ToList();

                if (trainingCourse == null)
                {
                    return null;
                }

                var trainingCourseModel = trainingCourse.Select(s => new TrainingCourseModel()
                {
                    TrainingCourseID = s.TrainingCourseID,
                    TrainingCourseName = s.TrainingCourseName  
                }).OrderBy(o => o.TrainingCourseID).ToList();


                return trainingCourseModel;
            }
            catch (Exception)
            {

                return null;
            }

        }


        public LU_TrainingCourse GetCourseByProgramID(int CourseID)
        {
            try
            {
                ent.Configuration.ProxyCreationEnabled = false;
                var Course = ent.LU_TrainingCourse.FirstOrDefault(x=>x.TrainingCourseID==CourseID);

                if (Course == null)
                {
                    return null;
                }
                  
                return Course;
            }
            catch (Exception)
            {

                return null;
            }

        }
         
         
        public bool Add(string TrainingCourseName, int TrainingProgramID)
        {
            if (TrainingCourseName == null) return false;
            LU_TrainingCourse LU_TrainingCourse = new LU_TrainingCourse()
            {
                TrainingCourseName = TrainingCourseName,
                TrainingProgramID = TrainingProgramID,

            };
            var result = ent.LU_TrainingCourse.Add(LU_TrainingCourse);
            ent.SaveChanges();

            if (result == null || result.TrainingCourseID <= 0)
            {
                return false;
            }

            return true;
        }


        public bool Update(string TrainingCourseName, int? TrainingCourseID)
        {
            try
            {
                LU_TrainingCourse Course = ent.LU_TrainingCourse.Find(TrainingCourseID);

                if (Course != null)
                {
                    Course.TrainingCourseName = TrainingCourseName;
                    ent.SaveChanges();

                    return true;
                }

                return false;
            }
            catch (Exception ex)
            {
                return false;
            }
        }


        public bool Delete(int? ID)
        {

            try
            {

                if (ID == null || ID == null) return false;
                LU_TrainingCourse TrainingCourse = ent.LU_TrainingCourse.SingleOrDefault(p => p.TrainingCourseID == ID);


                if (TrainingCourse != null)
                { 
                    ent.LU_TrainingCourse.Remove(TrainingCourse);
                    ent.SaveChanges();
                    return true;
                }
                return false;

            }
            catch (Exception)
            {

                return false;
            }
        }






    }
}
