INCLUDEPATH += \
    $$PWD \
    $$PWD/qml/uniqt/ \
    $$PWD/../src/ \

HEADERS += \
    $$PWD/../src/uniqt/applicationCore.h \
    $$PWD/../src/uniqt/enum.h \

SOURCES += \
    $$PWD/../src/uniqt/applicationCore.cpp \

RESOURCES += \
    $$PWD/android.qrc \
    $$PWD/../resource/res.qrc \

DISTFILES += \
    $$PWD/qml/uniqt/styles/Styles.qml \
    $$PWD/qml/uniqt/styles/qmldir \
    $$PWD/qml/uniqt/uikit/*.qml \
    $$PWD//qml/uniqt/uikit/qmldir \

QML_IMPORT_PATH = $$PWD//qml

DEFINES += \
    QML_IMPORT_PATH_STRING='"\\\"$$QML_IMPORT_PATH\\\""' \
