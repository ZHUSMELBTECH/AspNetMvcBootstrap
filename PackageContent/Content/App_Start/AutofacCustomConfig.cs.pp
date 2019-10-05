using Autofac;
using System.Web.Mvc;

namespace $rootnamespace$
{
    public partial class AutofacConfig
    {
        private static ContainerBuilder ConfigureAutofac(ContainerBuilder builder)
        {
            // Register services here to be included into the built container.
            
            return builder;
        }
    }
}