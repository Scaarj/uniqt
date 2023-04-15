#include "applicationCore.h"

#include <QDir>
#include <QQmlContext>

#include "enum.h"

using namespace uniqt;

ApplicationCore::ApplicationCore(int& argc, char** argv)
#ifdef Q_OS_AURORA
{
	application = Aurora::Application::application(argc, argv);
	view = Aurora::Application::createView();
	EnumRegister::init();
}
#else
	: defaultAttributes()
	, application(argc, argv) {
	EnumRegister::init();
}
#endif

void ApplicationCore::setOrganizationDomain(const QString& orgDomain) {
#ifdef Q_OS_AURORA
	application->setOrganizationDomain(orgDomain);
#else
	application.setOrganizationDomain(orgDomain);
#endif
}

QString ApplicationCore::organizationDomain() const {
#ifdef Q_OS_AURORA
	return application->organizationDomain();
#else
	return application.organizationDomain();
#endif
}

void ApplicationCore::setOrganizationName(const QString& orgName) {
#ifdef Q_OS_AURORA
	application->setOrganizationName(orgName);
#else
	application.setOrganizationName(orgName);
#endif
}

QString ApplicationCore::organizationName() const {
#ifdef Q_OS_AURORA
	return application->organizationName();
#else
	return application.organizationName();
#endif
}

void ApplicationCore::setApplicationName(const QString& applicationName) {
#ifdef Q_OS_AURORA
	application->setApplicationName(applicationName);
#else
	application.setApplicationName(applicationName);
#endif
}

QString ApplicationCore::applicationName() const {
#ifdef Q_OS_AURORA
	return application->applicationName();
#else
	return application.applicationName();
#endif
}

void ApplicationCore::setApplicationVersion(const QString& version) {
#ifdef Q_OS_AURORA
	application->setApplicationVersion(version);
#else
	application.setApplicationVersion(version);
#endif
}

void ApplicationCore::setStyle([[maybe_unused]] const QString& style) {
#ifdef Q_OS_AURORA
#else
	QQuickStyle::setStyle(style);
#endif
}

void ApplicationCore::setSource(const QString& path) {
#ifdef Q_OS_AURORA
	view->setSource(Aurora::Application::pathTo(path));
	view->show();
#else
	engine.addImportPath(QML_IMPORT_PATH_STRING);

	QUrl url("qrc:/" + path);

	connection = QObject::connect(
		&engine, &QQmlApplicationEngine::objectCreated, &application,
		[&](QObject* obj, const QUrl& objUrl) {
			if (!obj && url == objUrl)
				QCoreApplication::exit(-1);
		},
		Qt::QueuedConnection);
	engine.load(url);
#endif
}

void ApplicationCore::makeStandartPaths() {
#ifdef Q_OS_AURORA
//    Uncomment in 4.0.2.175 and above version
//    QDir().mkpath(Aurora::Application::filesDir(false).path());
//    QDir().mkpath(Aurora::Application::filesDir(true).path());
//    QDir().mkpath(Aurora::Application::cacheDir(false).path());
//    QDir().mkpath(Aurora::Application::cacheDir(true).path());
#else
#endif
}

int ApplicationCore::exec() {
#ifdef Q_OS_AURORA
	return application->exec();
#else
	return application.exec();
#endif
}

QObject* ApplicationCore::rootObject() {
#ifdef Q_OS_AURORA
	return view->rootObject();
#else
	return engine.rootObjects().first();
#endif
}
