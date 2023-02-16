#include "application.h"

using namespace uniqt;

Application::Application(int &argc, char **argv)
#ifdef Q_OS_AURORA
{
    application = Aurora::Application::application(argc, argv);
    view = Aurora::Application::createView();
}
#else
    : defaultAttributes(), application(argc, argv)
{}
#endif

void Application::setOrganizationDomain(const QString& orgDomain)
{
#ifdef Q_OS_AURORA
    application->setOrganizationDomain(orgDomain);
#else
    application.setOrganizationDomain(orgDomain);
#endif
}

QString Application::organizationDomain()
{
#ifdef Q_OS_AURORA
    return application->organizationDomain();
#else
    return application.organizationDomain();
#endif
}

void Application::setOrganizationName(const QString& orgName)
{
#ifdef Q_OS_AURORA
    application->setOrganizationName(orgName);
#else
    application.setOrganizationName(orgName);
#endif
}

QString Application::organizationName()
{
#ifdef Q_OS_AURORA
    return application->organizationName();
#else
    return application.organizationName();
#endif
}

void Application::setApplicationName(const QString& applicationName)
{
#ifdef Q_OS_AURORA
    application->setApplicationName(applicationName);
#else
    application.setApplicationName(applicationName);
#endif
}

QString Application::applicationName()
{
#ifdef Q_OS_AURORA
    return application->applicationName();
#else
    return application.applicationName();
#endif
}

void Application::setApplicationVersion(const QString& version)
{
#ifdef Q_OS_AURORA
    application->setApplicationVersion(version);
#else
    application.setApplicationVersion(version);
#endif
}

void Application::setStyle(const QString& style)
{
#ifdef Q_OS_AURORA
#else
    QQuickStyle::setStyle(style);
#endif
}

void Application::setSource(const QString& path)
{
#ifdef Q_OS_AURORA
    view->setSource(Aurora::Application::pathTo(path));
    view->show();
#else
    engine.addImportPath(QML_IMPORT_PATH_STRING);

    QUrl url("qrc:/" + path);

    connection = QObject::connect(&engine, &QQmlApplicationEngine::objectCreated, &application, [&](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);
#endif
}

int Application::exec()
{
#ifdef Q_OS_AURORA
    return application->exec();
#else
    return application.exec();
#endif
}
