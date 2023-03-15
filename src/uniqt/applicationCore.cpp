#include "applicationCore.h"

#include <QQmlContext>

#include "enum.h"

using namespace uniqt;

ApplicationCore::ApplicationCore(int& argc, char** argv)
#ifdef Q_OS_AURORA
{
    application = SailfishApp::application(argc, argv);
    view = SailfishApp::createView();
    EnumRegister::init();
}
#else
    : defaultAttributes(), application(argc, argv)
{
    EnumRegister::init();
}
#endif

void ApplicationCore::setOrganizationDomain(const QString& orgDomain)
{
#ifdef Q_OS_AURORA
    application->setOrganizationDomain(orgDomain);
#else
    application.setOrganizationDomain(orgDomain);
#endif
}

QString ApplicationCore::organizationDomain() const
{
#ifdef Q_OS_AURORA
    return application->organizationDomain();
#else
    return application.organizationDomain();
#endif
}

void ApplicationCore::setOrganizationName(const QString& orgName)
{
#ifdef Q_OS_AURORA
    application->setOrganizationName(orgName);
#else
    application.setOrganizationName(orgName);
#endif
}

QString ApplicationCore::organizationName() const
{
#ifdef Q_OS_AURORA
    return application->organizationName();
#else
    return application.organizationName();
#endif
}

void ApplicationCore::setApplicationName(const QString& applicationName)
{
#ifdef Q_OS_AURORA
    application->setApplicationName(applicationName);
#else
    application.setApplicationName(applicationName);
#endif
}

QString ApplicationCore::applicationName() const
{
#ifdef Q_OS_AURORA
    return application->applicationName();
#else
    return application.applicationName();
#endif
}

void ApplicationCore::setApplicationVersion(const QString& version)
{
#ifdef Q_OS_AURORA
    application->setApplicationVersion(version);
#else
    application.setApplicationVersion(version);
#endif
}

void ApplicationCore::setStyle([[maybe_unused]] const QString& style)
{
#ifdef Q_OS_AURORA
#else
    QQuickStyle::setStyle(style);
#endif
}

void ApplicationCore::setSource(const QString& path)
{
#ifdef Q_OS_AURORA
    view->setSource(SailfishApp::pathTo(path));
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

int ApplicationCore::exec()
{
#ifdef Q_OS_AURORA
    return application->exec();
#else
    return application.exec();
#endif
}