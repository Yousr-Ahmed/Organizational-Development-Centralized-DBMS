using MCITTrainingAPP.Models.AppModels;
using MCITTrainingAPP.Models.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MCITTrainingAPP.DataBaseServices
{
    public class FiscalYearsService
    {
        MCITTrainingDBEntities db = new MCITTrainingDBEntities();
        public List<FiscalYearModel> FiscalYearsList()
        {
            try
            {
                var FiscalYears = db.TBL_FiscalYear.OrderByDescending(x => x.FiscalYearID).ToList();

                if (FiscalYears == null)
                {
                    return null;
                }

                var FiscalYearsModel = FiscalYears.Select(s => new FiscalYearModel()
                {
                    FiscalYearID = s.FiscalYearID,
                    FiscalYear = s.FiscalYear
                }).OrderBy(o => o.FiscalYearID).ToList();


                return FiscalYearsModel;
            }
            catch (Exception)
            {

                return null;
            }

        }
        public bool Add(FiscalYearModel FiscalYear)
        {
            if (FiscalYear == null) return false;
            TBL_FiscalYear TBL_FiscalYear = new TBL_FiscalYear()
            {
                FiscalYear = FiscalYear.FiscalYear
            };
            var result = db.TBL_FiscalYear.Add(TBL_FiscalYear);
            db.SaveChanges();

            if (result == null || result.FiscalYearID <= 0)
            {
                return false;
            }

            return true;


        }
        public FiscalYearModel GetFiscalYearByID(int FiscalYearID)
        {
            try
            {
                var FiscalYear = db.TBL_FiscalYear.Find(FiscalYearID);

                if (FiscalYear == null)
                {
                    return null;
                }

                FiscalYearModel FiscalYearsModel = new FiscalYearModel();
                FiscalYearsModel.FiscalYearID = FiscalYear.FiscalYearID;
                FiscalYearsModel.FiscalYear = FiscalYear.FiscalYear;


                return FiscalYearsModel;
            }
            catch (Exception)
            {

                return null;
            }

        }
        public bool Update(FiscalYearModel FiscalYearModel)
        {
            try
            {
                TBL_FiscalYear FiscalYear = db.TBL_FiscalYear.Find(FiscalYearModel.FiscalYearID);

                if (FiscalYear != null)
                {
                    FiscalYear.FiscalYear = FiscalYearModel.FiscalYear;
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
                TBL_FiscalYear FiscalYear = db.TBL_FiscalYear.FirstOrDefault(f => f.FiscalYearID == ID);
                 
                if (FiscalYear != null)
                {
                    db.TBL_FiscalYear.Remove(FiscalYear);
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