using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WU.UI.Startup))]
namespace WU.UI
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
