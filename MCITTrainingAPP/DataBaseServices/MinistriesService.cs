using MCITTrainingAPP.Models.AppModels;
using MCITTrainingAPP.Models.EF;
using System;
using System.Collections.Generic;
using System.Linq;


namespace MCITTrainingAPP.DataBaseServices
{
    public class MinistriesService  
    {
        MCITTrainingDBEntities ent = new MCITTrainingDBEntities();

        public List<MinistryModel> GetMinistries(bool initialLoad = false)
        {  
            try
            {
                var MinistriesModel = new List<MinistryModel>();

                if (!initialLoad)
                {
                     
                    var  Ministries = ent.TBL_Ministries.ToList();

                    if (Ministries == null)
                    {
                        return null;
                    }

                    MinistriesModel = Ministries.Select(s => new MinistryModel()
                    {
                        MinistryID = s.MinistryID,
                        MinistryName = s.MinistryName,
                        MinistryQuote = s.MinistryQuote 
                    }).OrderBy(o => o.MinistryName).ToList();

                }

                var ministriesTip = new MinistryModel()
                {
                    MinistryID = 0,
                    MinistryName = "--- اختيار الوزارة ---"
                };


                MinistriesModel.Insert(0, ministriesTip);

                return MinistriesModel;
            }
            catch (Exception)
            {

                return null;
            }

        }
         
         
        public List<MinistryModel> MinistriesList()
        {
            try
            {
                var Ministries = ent.TBL_Ministries.OrderByDescending(x => x.MinistryID).ToList();

                if (Ministries == null)
                {
                    return null;
                }

                var MinistriesModel = Ministries.Select(s => new MinistryModel()
                {
                    MinistryID = s.MinistryID,
                    MinistryName = s.MinistryName,
                    MinistryQuote = s.MinistryQuote ?? 0,
                   
                }).OrderBy(o => o.MinistryID).ToList();


                return MinistriesModel;
            }
            catch (Exception ex)
            {

                return null;
            }

        }




        public bool Add(MinistryModel MinistryModel)
        {
            if (MinistryModel == null) return false;
            TBL_Ministries TBL_Ministries = new TBL_Ministries()
            {
                MinistryName = MinistryModel.MinistryName,
                MinistryQuote = MinistryModel.MinistryQuote 
            };
            var result = ent.TBL_Ministries.Add(TBL_Ministries);
            ent.SaveChanges();

            if (result == null || result.MinistryID <= 0)
            {
                return false;
            }

            return true;


        }

        public MinistryModel GetMinistryByID(int MinistryID)
        {
            try
            {
                var Ministry = ent.TBL_Ministries.Find(MinistryID);

                if (Ministry == null)
                {
                    return null;
                } 

                MinistryModel MinistryModel = new MinistryModel();
                MinistryModel.MinistryID = Ministry.MinistryID;
                MinistryModel.MinistryName = Ministry.MinistryName;
                MinistryModel.MinistryQuote = Ministry.MinistryQuote??0; 
                 
                return MinistryModel;
            }
            catch (Exception)
            {

                return null;
            }

        }
    
        public bool Update(MinistryModel MinistryModel)
        {
            try
            {
                TBL_Ministries Ministry = ent.TBL_Ministries.Find(MinistryModel.MinistryID);

                if (Ministry != null)
                {
                    Ministry.MinistryName = MinistryModel.MinistryName;
                    Ministry.MinistryQuote = MinistryModel.MinistryQuote; 
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
                TBL_Ministries Ministry = ent.TBL_Ministries.SingleOrDefault(p => p.MinistryID == ID);


                if (Ministry != null)
                {
                    ent.TBL_Ministries.Remove(Ministry);
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
