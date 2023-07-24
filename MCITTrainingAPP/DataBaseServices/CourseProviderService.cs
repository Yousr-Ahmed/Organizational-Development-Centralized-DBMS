using MCITTrainingAPP.Models.AppModels;
using MCITTrainingAPP.Models.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MCITTrainingAPP.DataBaseServices
{
    public class CourseProviderService
    {
        MCITTrainingDBEntities db = new MCITTrainingDBEntities();
        public List<CourseProviderModel> CourseProviderList()
        {
            try


            {
                var CourseProvider = db.LU_CourseProvider.AsQueryable();

                if (CourseProvider == null)
                {
                    return null;
                }

                var CourseProviderModel = CourseProvider.Select(s => new CourseProviderModel()
                {
                    CourseProviderID = s.CourseProvideID, 
                    CourseProviderName = s.CourseProviderName
                }).OrderByDescending(o => o.CourseProviderID).ToList();


                return CourseProviderModel;
            }
            catch (Exception)
            {

                return null;
            }

        }
        public bool Add(CourseProviderModel CourseProvider)
        {
            if (CourseProvider == null) return false;
            LU_CourseProvider LU_CourseProvider = new LU_CourseProvider()
            {
                CourseProviderName = CourseProvider.CourseProviderName
            };
            var result = db.LU_CourseProvider.Add(LU_CourseProvider);
            db.SaveChanges();

            if (result == null || result.CourseProvideID <= 0)
            {
                return false;
            }

            return true;


        }
        public CourseProviderModel GetCourseProviderByID(int CourseProviderID)
        {
                try
                {
                    var CourseProvider = db.LU_CourseProvider.Find(CourseProviderID);

                    if (CourseProvider == null)
                    {
                        return null;
                    }

                CourseProviderModel CourseProviderModel = new CourseProviderModel();
                CourseProviderModel.CourseProviderID = CourseProvider.CourseProvideID;
                CourseProviderModel.CourseProviderName = CourseProvider.CourseProviderName;


                    return CourseProviderModel;
                }
                catch (Exception)
            {

                return null;
            }

        }
        public bool Update(CourseProviderModel CourseProviderModel)
        {
            try
            {
                LU_CourseProvider CourseProvider = db.LU_CourseProvider.Find(CourseProviderModel.CourseProviderID);

                if (CourseProvider != null)
                {
                    CourseProvider.CourseProviderName = CourseProviderModel.CourseProviderName;
                    db.SaveChanges();

                    return true;
                }

                return false;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
        public bool Delete(int  ID)
        { 
            try
            {
                LU_CourseProvider CourseProvider = db.LU_CourseProvider.FirstOrDefault(p => p.CourseProvideID == ID);
                 
                if (CourseProvider != null)
                {
                    db.LU_CourseProvider.Remove(CourseProvider);
                    db.SaveChanges();
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