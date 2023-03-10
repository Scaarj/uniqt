DEFINES += Q_OS_AURORA

INCLUDEPATH += \
    $$PWD \
    $$PWD/qml/ \
    $$PWD/../src/ \

HEADERS += \
    $$PWD/../src/application.h \
    $$PWD/../src/enum.h \

SOURCES += \
    $$PWD/../src/application.cpp \

RESOURCES += \
    $$PWD/../resource/res.qrc \

qml_lib.files = $$PWD/qml/uniqt/*
qml_lib.path = /usr/share/$${TARGET}/uniqt/
INSTALLS += qml_lib

DISTFILES += \
    $$PWD/qml/styles/*.qml \
    $$PWD/qml/styles/qmldir \
    $$PWD/qml/uikit/*.qml \
    $$PWD/qml/uikit/qmldir \
    $$PWD/qml/uniqt/Pane.qml

QML_IMPORT_PATH = $$PWD/qml
