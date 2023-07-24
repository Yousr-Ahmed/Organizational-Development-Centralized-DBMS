using MCITTrainingAPP.Models.AppModels;
using MCITTrainingAPP.Models.EF;
using System;
using System.Collections.Generic;
using System.Linq; 

namespace MCITTrainingAPP.DataBaseServices
{
    public class SubMinistriesService 
    {
        MCITTrainingDBEntities ent = new MCITTrainingDBEntities();

        public List<SubMinistryModel> GetSubMinistries(bool initialLoad = false)
        {
            try
            {
                var subMinistriesModel = new List<SubMinistryModel>();

                if (!initialLoad)
                { 
                    var subMinistries = ent.TBL_SubMinistry.ToList();

                    if (subMinistries == null)
                    {
                        return null;
                    }

                    subMinistriesModel = subMinistries.Select(s => new SubMinistryModel()
                    {
                        SubMinistryID = s.SubMinistryID,
                        SubMinistryName = s.SubMinistryName,
                        Ministry = new MinistryModel()
                        {
                            MinistryID = s.TBL_Ministries.MinistryID,
                            MinistryName = s.TBL_Ministries.MinistryName
                        }

                    }).OrderBy(o => o.SubMinistryName).ToList();

                }

                var subMinistriesTip = new SubMinistryModel()
                {
                    SubMinistryID = 0,
                    SubMinistryName = "--- اختيار الجهة التابعة ---"
                };

                subMinistriesModel.Insert(0, subMinistriesTip);

                return subMinistriesModel;
            }
            catch (Exception)
            {

                return null;
            }

        }

        public List<SubMinistryModel> GetSubMinistry(int ministryID)
        {
            try
            { 
                var subMinistries = ent.TBL_SubMinistry.Where(x => x.MinistryID == ministryID).ToList();

                if (subMinistries == null)
                {
                    return null;
                }

                var subMinistriesModel = subMinistries.Select(s => new SubMinistryModel()
                {
                    SubMinistryID = s.SubMinistryID, 
                    SubMinistryName = s.SubMinistryName,
                    Ministry = new MinistryModel()
                    {
                        MinistryID = s.TBL_Ministries.MinistryID,
                        MinistryName = s.TBL_Ministries.MinistryName
                    }

                }).OrderBy(o => o.SubMinistryName).ToList();

                var subMinistriesTip = new SubMinistryModel()
                {
                    SubMinistryID = 0,
                    SubMinistryName = "--- اختيار الجهة ---"
                };

                subMinistriesModel.Insert(0, subMinistriesTip);

                return subMinistriesModel;
            }
            catch (Exception)
            {

                return null;
            }

        }
 


         

        public List<SubMinistryModel> GetSubMinistriesByMinistryID(int? MinistryID)
        {
            try
            {
                if (MinistryID == null) return null;
                var SubMinistry = ent.TBL_SubMinistry.Where(x => x.MinistryID == MinistryID).ToList();

                if (SubMinistry == null)
                {
                    return null;
                }

                var SubMinistryModel = SubMinistry.Select(s => new SubMinistryModel()
                {
                   SubMinistryID=s.SubMinistryID,
                   SubMinistryName=s.SubMinistryName 
                }).OrderBy(o => o.SubMinistryID).ToList();


                return SubMinistryModel;
            }
            catch (Exception)
            {

                return null;
            }

        }


        public TBL_SubMinistry GetSubMinistryInfoByID(int SubMinistryID)
        {
            try
            {
                ent.Configuration.ProxyCreationEnabled = false;
                var Course = ent.TBL_SubMinistry.FirstOrDefault(x => x.SubMinistryID == SubMinistryID);

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
          
        public bool Add(string SubMinistryName, int? MinistryID)
        {
            if (SubMinistryName == null || MinistryID == null) return false;
            TBL_SubMinistry TBL_SubMinistry = new TBL_SubMinistry()
            {
                SubMinistryName = SubMinistryName,
                MinistryID = MinistryID
            };
            var result = ent.TBL_SubMinistry.Add(TBL_SubMinistry);
            ent.SaveChanges();

            if (result == null || result.SubMinistryID <= 0)
            {
                return false;
            }

            return true;
        }


        public bool Update(string SubMinistryName, int? SubMinistryID)
        {
            try
            {
                TBL_SubMinistry SubMinistry = ent.TBL_SubMinistry.Find(SubMinistryID);

                if (SubMinistry != null)
                {
                    SubMinistry.SubMinistryName = SubMinistryName; 
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


        public bool Delete(int? SubMinistryID)
        { 
            try
            {

                if (SubMinistryID == null || SubMinistryID == null) return false;
                TBL_SubMinistry SubMinistry = ent.TBL_SubMinistry.SingleOrDefault(p => p.SubMinistryID == SubMinistryID);


                if (SubMinistry != null)
                {
                    ent.TBL_SubMinistry.Remove(SubMinistry);
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
