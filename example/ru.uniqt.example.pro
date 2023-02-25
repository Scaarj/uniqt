################################################################################
##
## Copyright (C) 2022 ru.auroraos
##
## This file is part of the My Aurora OS Application project.
##
## Redistribution and use in source and binary forms,
## with or without modification, are permitted provided
## that the following conditions are met:
##
## * Redistributions of source code must retain the above copyright notice,
##   this list of conditions and the following disclaimer.
## * Redistributions in binary form must reproduce the above copyright notice,
##   this list of conditions and the following disclaimer
##   in the documentation and/or other materials provided with the distribution.
## * Neither the name of the copyright holder nor the names of its contributors
##   may be used to endorse or promote products derived from this software
##   without specific prior written permission.
##
## THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
## AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
## THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
## FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
## IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
## FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
## OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
## PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
## LOSS OF USE, DATA, OR PROFITS;
## OR BUSINESS INTERRUPTION)
## HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
## WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
## (INCLUDING NEGLIGENCE OR OTHERWISE)
## ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
## EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
##
################################################################################

TARGET = ru.uniqt.example

INCLUDEPATH += \
    $$PWD/ \

HEADERS += \

SOURCES += \
    $$PWD/src/main.cpp \

RESOURCES += \
    $$PWD/icons.qrc \

DISTFILES += \
    $$PWD/qml/ColorPage.qml \
    $$PWD/qml/ControlPage.qml \
    $$PWD/qml/ExampleApplication.qml \
    $$PWD/qml/FontPage.qml \
    $$PWD/qml/IconPage.qml \
    $$PWD/qml/LayoutPage.qml \
    $$PWD/qml/MainPage.qml \
    $$PWD/qml/ModifierPage.qml \

contains(QMAKE_HOST.arch, armv7l) | contains(QMAKE_HOST.arch, i486) | contains(QMAKE_QMAKE, .*Aurora.*) {
    message("Configuring for aurora build...")

    CONFIG += auroraapp auroraapp_i18n

    PKGCONFIG += \

    AURORAAPP_ICONS = 86x86 108x108 128x128 172x172

    TRANSLATIONS += \
        translations/ru.uniqt.example.ts \
        translations/ru.uniqt.example-ru.ts \

    include(../aurora/aurora.pri)
} else {
    message("Configuring for android/desktop build...")

    QT += quick quickcontrols2 core svg

    RESOURCES += \
        $$PWD/qml.qrc \

    # Default rules for deployment.
    qnx: target.path = /tmp/$${TARGET}/bin
    else: unix:!android: target.path = /opt/$${TARGET}/bin
    !isEmpty(target.path): INSTALLS += target

    include(../desktop/desktop.pri)
}
