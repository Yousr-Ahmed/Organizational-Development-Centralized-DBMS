using MCITTrainingAPP.Models.AppModels;
using MCITTrainingAPP.Models.EF;
using System;
using System.Collections.Generic;
using System.Linq;

namespace MCITTrainingAPP.DataBaseServices
{
    public class TrainingProgramsService
    {

        MCITTrainingDBEntities ent = new MCITTrainingDBEntities();

        public List<TrainingProgramModel> TrainingProgramsList()
        {
            try
            {
                var TrainingPrograms = ent.LU_TrainingProgram.OrderByDescending(x => x.TrainingProgramID).ToList();

                if (TrainingPrograms == null)
                {
                    return null;
                }

                var TrainingProgramModel = TrainingPrograms.Select(s => new TrainingProgramModel()
                {
                    TrainingProgramID = s.TrainingProgramID,
                    TrainingProgramName = s.TrainingProgramName
                }).OrderBy(o => o.TrainingProgramID).ToList();


                return TrainingProgramModel;
            }
            catch (Exception)
            {

                return null;
            }

        }




        public bool Add(TrainingProgramModel TrainingProgramModel)
        {
            if (TrainingProgramModel == null) return false;
            LU_TrainingProgram LU_TrainingProgram = new LU_TrainingProgram()
            {
                TrainingProgramName = TrainingProgramModel.TrainingProgramName
            };
            var result = ent.LU_TrainingProgram.Add(LU_TrainingProgram);
            ent.SaveChanges();

            if (result == null || result.TrainingProgramID <= 0)
            {
                return false;
            }

            return true;


        }

        public TrainingProgramModel GetTrainingProgramByID(int TrainingProgramID)
        {
            try
            {
                var Program = ent.LU_TrainingProgram.Find(TrainingProgramID);

                if (Program == null)
                {
                    return null;
                }

                TrainingProgramModel trainingProgramModel = new TrainingProgramModel();
                trainingProgramModel.TrainingProgramID = Program.TrainingProgramID;
                trainingProgramModel.TrainingProgramName = Program.TrainingProgramName;


                return trainingProgramModel;
            }
            catch (Exception)
            {

                return null;
            }

        }


        public bool Update(TrainingProgramModel TrainingProgramModel)
        {
            try
            {
                LU_TrainingProgram Program = ent.LU_TrainingProgram.Find(TrainingProgramModel.TrainingProgramID);

                if (Program != null)
                {
                    Program.TrainingProgramName = TrainingProgramModel.TrainingProgramName;
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
                LU_TrainingProgram TrainingProgram = ent.LU_TrainingProgram.SingleOrDefault(p => p.TrainingProgramID == ID);


                if (TrainingProgram != null)
                {
                    ent.LU_TrainingProgram.Remove(TrainingProgram);
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
