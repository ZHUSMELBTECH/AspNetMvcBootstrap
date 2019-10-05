[assembly: WebActivatorEx.PreApplicationStartMethod(typeof($rootnamespace$.AspMvcBootstrap), "PreStart")]

namespace $rootnamespace$
{
    public class AspMvcBootstrap
    {
        public static void PreStart()
        {
            AutofacConfig.RegisterAutofac();
        }
    }
}