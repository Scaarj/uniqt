#include "uniqt/applicationCore.h"

int main(int argc, char* argv[]) {
	uniqt::ApplicationCore::setStyle("Material");

	uniqt::ApplicationCore application(argc, argv);
	application.setOrganizationName(QStringLiteral("ru.uniqt"));
	application.setApplicationName(QStringLiteral("example"));

	application.setSource("qml/example.qml");
	return application.exec();
}
