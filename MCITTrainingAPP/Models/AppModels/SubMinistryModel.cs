using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MCITTrainingAPP.Models.AppModels
{
    public class SubMinistryModel
    {
        public int SubMinistryID { get; set; } 
        public string SubMinistryName { get; set; }
        public MinistryModel Ministry { get; set; }
        
    }
}
