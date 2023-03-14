INCLUDEPATH += \
    $$PWD \
    $$PWD/qml/uniqt/ \
    $$PWD/../src/ \

HEADERS += \
    $$PWD/../src/uniqt/application.h \
    $$PWD/../src/uniqt/enum.h \

SOURCES += \
    $$PWD/../src/uniqt/application.cpp \

RESOURCES += \
    $$PWD/../android/android.qrc \
    $$PWD/../resource/res.qrc \

DISTFILES += \
    $$PWD/../android/qml/uniqt/styles/Styles.qml \
    $$PWD/../android/qml/uniqt/styles/qmldir \
    $$PWD/../android/qml/uniqt/uikit/*.qml \
    $$PWD/../android/qml/uniqt/uikit/qmldir \

QML_IMPORT_PATH = $$PWD/../android/qml

DEFINES += \
    QML_IMPORT_PATH_STRING='"\\\"$$QML_IMPORT_PATH\\\""' \
