include(gtest_dependency.pri)

TARGET = ru.uniqt.test
TEMPLATE = app
CONFIG += console c++17 thread

TEST_SOURCE_PATH=$$PWD/src/
SOURCE_PATH=$$PWD/../src/

INCLUDEPATH += \
        $$SOURCE_PATH \

SOURCES += \
        main.cpp \
        $$TEST_SOURCE_PATH/applicationTest.cpp \

contains(QMAKE_HOST.arch, armv7l) | contains(QMAKE_HOST.arch, i486) | contains(QMAKE_QMAKE, .*Aurora.*) {
    message("Configuring for aurora build...")

    CONFIG += auroraapp auroraapp_i18n
    AURORAAPP_ICONS = 86x86 108x108 128x128 172x172

    include(../aurora/aurora.pri)
} else {
    message("Configuring for android/desktop build...")

    QT += quick quickcontrols2 core

    include(../android/android.pri)
}
