﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MCITTrainingAPP.Models.EF
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class MCITTrainingDBEntities : DbContext
    {
        public MCITTrainingDBEntities()
            : base("name=MCITTrainingDBEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<LU_CourseProvider> LU_CourseProvider { get; set; }
        public virtual DbSet<LU_EmploymentDegree> LU_EmploymentDegree { get; set; }
        public virtual DbSet<LU_EmploymentLevel> LU_EmploymentLevel { get; set; }
        public virtual DbSet<LU_StudyMechanism> LU_StudyMechanism { get; set; }
        public virtual DbSet<LU_TrainingCourse> LU_TrainingCourse { get; set; }
        public virtual DbSet<LU_TrainingProgram> LU_TrainingProgram { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<TBL_Candidates_Courses> TBL_Candidates_Courses { get; set; }
        public virtual DbSet<TBL_CandidatesInfo> TBL_CandidatesInfo { get; set; }
        public virtual DbSet<TBL_FiscalYear> TBL_FiscalYear { get; set; }
        public virtual DbSet<TBL_Ministries> TBL_Ministries { get; set; }
        public virtual DbSet<TBL_SubMinistry> TBL_SubMinistry { get; set; }
    
        public virtual int sp_alterdiagram(string diagramname, Nullable<int> owner_id, Nullable<int> version, byte[] definition)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            var versionParameter = version.HasValue ?
                new ObjectParameter("version", version) :
                new ObjectParameter("version", typeof(int));
    
            var definitionParameter = definition != null ?
                new ObjectParameter("definition", definition) :
                new ObjectParameter("definition", typeof(byte[]));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_alterdiagram", diagramnameParameter, owner_idParameter, versionParameter, definitionParameter);
        }
    
        public virtual int sp_creatediagram(string diagramname, Nullable<int> owner_id, Nullable<int> version, byte[] definition)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            var versionParameter = version.HasValue ?
                new ObjectParameter("version", version) :
                new ObjectParameter("version", typeof(int));
    
            var definitionParameter = definition != null ?
                new ObjectParameter("definition", definition) :
                new ObjectParameter("definition", typeof(byte[]));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_creatediagram", diagramnameParameter, owner_idParameter, versionParameter, definitionParameter);
        }
    
        public virtual int sp_dropdiagram(string diagramname, Nullable<int> owner_id)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_dropdiagram", diagramnameParameter, owner_idParameter);
        }
    
        public virtual ObjectResult<sp_helpdiagramdefinition_Result> sp_helpdiagramdefinition(string diagramname, Nullable<int> owner_id)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_helpdiagramdefinition_Result>("sp_helpdiagramdefinition", diagramnameParameter, owner_idParameter);
        }
    
        public virtual ObjectResult<sp_helpdiagrams_Result> sp_helpdiagrams(string diagramname, Nullable<int> owner_id)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_helpdiagrams_Result>("sp_helpdiagrams", diagramnameParameter, owner_idParameter);
        }
    
        public virtual int sp_renamediagram(string diagramname, Nullable<int> owner_id, string new_diagramname)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            var new_diagramnameParameter = new_diagramname != null ?
                new ObjectParameter("new_diagramname", new_diagramname) :
                new ObjectParameter("new_diagramname", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_renamediagram", diagramnameParameter, owner_idParameter, new_diagramnameParameter);
        }
    
        public virtual int sp_upgraddiagrams()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_upgraddiagrams");
        }
    
        public virtual ObjectResult<numberOfCandidatePerSubMinstriy_Result> numberOfCandidatePerSubMinstriy()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<numberOfCandidatePerSubMinstriy_Result>("numberOfCandidatePerSubMinstriy");
        }
    
        public virtual ObjectResult<spCanNumPerMinis_Result> spCanNumPerMinis()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spCanNumPerMinis_Result>("spCanNumPerMinis");
        }
    
        public virtual ObjectResult<spCanNumPerCourse_Result> spCanNumPerCourse()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spCanNumPerCourse_Result>("spCanNumPerCourse");
        }
    
        public virtual ObjectResult<spCanNumPerLevel_Result> spCanNumPerLevel()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spCanNumPerLevel_Result>("spCanNumPerLevel");
        }
    
        public virtual ObjectResult<spCanNumPerMech_Result> spCanNumPerMech()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spCanNumPerMech_Result>("spCanNumPerMech");
        }
    
        public virtual ObjectResult<spCanNumPerProg_Result> spCanNumPerProg()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spCanNumPerProg_Result>("spCanNumPerProg");
        }
    
        public virtual ObjectResult<spCandNumPerMinistry_SubMinistry_Result> spCandNumPerMinistry_SubMinistry()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spCandNumPerMinistry_SubMinistry_Result>("spCandNumPerMinistry_SubMinistry");
        }
    
        public virtual ObjectResult<spCanNumPerMechanism_Result> spCanNumPerMechanism()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spCanNumPerMechanism_Result>("spCanNumPerMechanism");
        }
    
        public virtual ObjectResult<spCandPerFiscalYear_Result> spCandPerFiscalYear()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spCandPerFiscalYear_Result>("spCandPerFiscalYear");
        }
    
        public virtual ObjectResult<spCanNumPerProvider_Result> spCanNumPerProvider()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spCanNumPerProvider_Result>("spCanNumPerProvider");
        }
    
        public virtual ObjectResult<spCourseNumPerProvider_Result> spCourseNumPerProvider()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spCourseNumPerProvider_Result>("spCourseNumPerProvider");
        }
    
        public virtual ObjectResult<spCandNumPerCourse_Result> spCandNumPerCourse()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spCandNumPerCourse_Result>("spCandNumPerCourse");
        }
    
        public virtual ObjectResult<spCandNumPerProgram_Result> spCandNumPerProgram()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spCandNumPerProgram_Result>("spCandNumPerProgram");
        }
    }
}
