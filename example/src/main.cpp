#include "uniqt/application.h"

int main(int argc, char *argv[])
{
    uniqt::Application::setStyle("Material");

    uniqt::Application application(argc, argv);
    application.setOrganizationName(QStringLiteral("ru.uniqt"));
    application.setApplicationName(QStringLiteral("example"));

    application.setSource("qml/example.qml");
    return application.exec();
}
