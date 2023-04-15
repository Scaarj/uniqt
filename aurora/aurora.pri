CONFIG += c++17

DEFINES += Q_OS_AURORA

INCLUDEPATH += \
    $$PWD \
    $$PWD/qml/ \
    $$PWD/../src/ \

qml_aurora_lib.files = $$PWD/qml/aurora/*
qml_aurora_lib.path = /usr/share/$${TARGET}/aurora/
INSTALLS += qml_aurora_lib

DISTFILES += \
    $$PWD/qml/aurora/*.qml \
	$$PWD/qml/aurora/qmldir

QML_IMPORT_PATH = $$PWD/qml
