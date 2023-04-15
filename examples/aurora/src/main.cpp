#include <auroraapp.h>
#include <QtQuick>

int main(int argc, char *argv[])
{
    QScopedPointer<QGuiApplication> application(Aurora::Application::application(argc, argv));
	application->setOrganizationName(QStringLiteral("ru.uniqt"));
	application->setApplicationName(QStringLiteral("aurora"));

	QScopedPointer<QQuickView> view(Aurora::Application::createView());
    view->setSource(Aurora::Application::pathTo(QStringLiteral("qml/aurora.qml")));
    view->show();

    return application->exec();
}
