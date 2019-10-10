using Autofac;
using Autofac.Integration.Mvc;
using System.Web.Mvc;

namespace $rootnamespace$
{
    public partial class AutofacConfig
    {
        public static void RegisterAutofac()
        {
            var builder = new ContainerBuilder();

            builder.RegisterControllers(typeof(MvcApplication).Assembly)
                .PropertiesAutowired(); // enable property injection on the controller

            // enable model binder injection
            builder.RegisterModelBinders(typeof(MvcApplication).Assembly)
                .PropertiesAutowired();
            builder.RegisterModelBinderProvider();

            // Register Autofac modules here.
            // Register Microsoft.Extensions.Logging Autofac module
            builder.RegisterModule<MsExtensionLoggingModule>();

            // Build an object IContainer of Autofac IoC after custom configuration
            // The custom configuration is in AutofacConfig.ConfigureAutofac method
            // define in AutofacCustomConfig.cs file.
            IContainer container = ConfigureAutofac(builder).Build();

            // Register IDependencyResolver, a container used ASP.NET MVC by default
            // with Autofac's 
            DependencyResolver.SetResolver(new AutofacDependencyResolver(container));
        }

    }
}