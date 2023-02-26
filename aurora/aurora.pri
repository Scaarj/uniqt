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
    $$PWD/qml/styles/Styles.qml \
    $$PWD/qml/styles/qmldir \
    $$PWD/qml/uikit/ApplicationWindow.qml \
    $$PWD/qml/uikit/Button.qml \
    $$PWD/qml/uikit/ButtonGroup.qml \
    $$PWD/qml/uikit/CheckBox.qml \
    $$PWD/qml/uikit/Column.qml \
    $$PWD/qml/uikit/ColumnLayout.qml \
    $$PWD/qml/uikit/ComboBox.qml \
    $$PWD/qml/uikit/Container.qml \
    $$PWD/qml/uikit/CoverPage.qml \
    $$PWD/qml/uikit/Font.qml \
    $$PWD/qml/uikit/Grid.qml \
    $$PWD/qml/uikit/GridLayout.qml \
    $$PWD/qml/uikit/HorizontalSpacer.qml \
    $$PWD/qml/uikit/Image.qml \
    $$PWD/qml/uikit/Item.qml \
    $$PWD/qml/uikit/Label.qml \
    $$PWD/qml/uikit/LayoutControl.qml \
    $$PWD/qml/uikit/LayoutPolitic.qml \
    $$PWD/qml/uikit/ListModel.qml \
    $$PWD/qml/uikit/ModifierControl.qml \
    $$PWD/qml/uikit/MouseArea.qml \
    $$PWD/qml/uikit/NumberAnimation.qml \
    $$PWD/qml/uikit/Page.qml \
    $$PWD/qml/uikit/ParallelAnimation.qml \
    $$PWD/qml/uikit/PasswordField.qml \
    $$PWD/qml/uikit/Rectangle.qml \
    $$PWD/qml/uikit/Repeater.qml \
    $$PWD/qml/uikit/Row.qml \
    $$PWD/qml/uikit/RowLayout.qml \
    $$PWD/qml/uikit/SequentialAnimation.qml \
    $$PWD/qml/uikit/SliderButton.qml \
    $$PWD/qml/uikit/Text.qml \
    $$PWD/qml/uikit/TextField.qml \
    $$PWD/qml/uikit/VerticalSpacer.qml \
    $$PWD/qml/uikit/qmldir \

QML_IMPORT_PATH = $$PWD/qml
