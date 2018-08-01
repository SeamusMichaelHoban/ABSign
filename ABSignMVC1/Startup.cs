using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ABSignMVC1.Startup))]
namespace ABSignMVC1
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
