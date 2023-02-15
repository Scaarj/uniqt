DEFINES += Q_OS_ANDROID

INCLUDEPATH += \
    $$PWD \
    $$PWD/qml/uniqt/ \
    $$PWD/../src/ \

HEADERS += \
    $$PWD/../src/application.h \

SOURCES += \
    $$PWD/../src/application.cpp \

RESOURCES += \
    $$PWD/icons.qrc \

DISTFILES += \
    $$PWD/qml/uniqt/styles/qmldir \
    $$PWD/qml/uniqt/styles/Styles.qml \
    $$PWD/qml/uniqt/uikit/qmldir \
    $$PWD/qml/uniqt/uikit/ApplicationWindow.qml \
    $$PWD/qml/uniqt/uikit/Button.qml \
    $$PWD/qml/uniqt/uikit/CheckBox.qml \
    $$PWD/qml/uniqt/uikit/ColumnLayout.qml \
    $$PWD/qml/uniqt/uikit/ComboBox.qml \
    $$PWD/qml/uniqt/uikit/Container.qml \
    $$PWD/qml/uniqt/uikit/CoverPage.qml \
    $$PWD/qml/uniqt/uikit/GridLayout.qml \
    $$PWD/qml/uniqt/uikit/HorizontalSpacer.qml \
    $$PWD/qml/uniqt/uikit/Item.qml \
    $$PWD/qml/uniqt/uikit/Label.qml \
    $$PWD/qml/uniqt/uikit/LayoutControl.qml \
    $$PWD/qml/uniqt/uikit/LayoutPolitic.qml \
    $$PWD/qml/uniqt/uikit/ListModel.qml \
    $$PWD/qml/uniqt/uikit/Page.qml \
    $$PWD/qml/uniqt/uikit/PasswordField.qml \
    $$PWD/qml/uniqt/uikit/Rectangle.qml \
    $$PWD/qml/uniqt/uikit/Repeater.qml \
    $$PWD/qml/uniqt/uikit/RowLayout.qml \
    $$PWD/qml/uniqt/uikit/SliderButton.qml \
    $$PWD/qml/uniqt/uikit/Text.qml \
    $$PWD/qml/uniqt/uikit/TextField.qml \
    $$PWD/qml/uniqt/uikit/VerticalSpacer.qml \

QML_IMPORT_PATH = $$PWD/qml

DEFINES += \
    QML_IMPORT_PATH_STRING='"\\\"$$QML_IMPORT_PATH\\\""' \
