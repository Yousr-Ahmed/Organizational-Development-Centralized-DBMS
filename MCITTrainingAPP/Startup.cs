using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MCITTrainingAPP.Startup))]
namespace MCITTrainingAPP
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
