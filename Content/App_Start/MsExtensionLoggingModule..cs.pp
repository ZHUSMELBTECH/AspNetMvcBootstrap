using Autofac;
using Microsoft.Extensions.Logging;
using NLog.Extensions.Logging;

namespace $rootnamespace$
{
    public class MsExtensionLoggingModule : Module
    {
        protected override void Load(ContainerBuilder builder)
        {
            builder.RegisterType<LoggerFactory>()
                .As<ILoggerFactory>()
                .OnActivated(e => e.Instance.AddNLog())
                .SingleInstance();

            builder.RegisterGeneric(typeof(Logger<>))
                .As(typeof(ILogger<>))
                .SingleInstance();
        }
    }
}