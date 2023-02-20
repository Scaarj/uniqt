INCLUDEPATH += \
    $$PWD \
    $$PWD/qml/uniqt/ \
    $$PWD/../src/ \

HEADERS += \
    $$PWD/../src/application.h \

SOURCES += \
    $$PWD/../src/application.cpp \

RESOURCES += \
    $$PWD/../android/android.qrc \
    $$PWD/../resource/res.qrc \

DISTFILES += \
    $$PWD/../android/qml/uniqt/styles/qmldir \
    $$PWD/../android/qml/uniqt/styles/Styles.qml \
    $$PWD/../android/qml/uniqt/uikit/qmldir \
    $$PWD/../android/qml/uniqt/uikit/ApplicationWindow.qml \
    $$PWD/../android/qml/uniqt/uikit/Button.qml \
    $$PWD/../android/qml/uniqt/uikit/CheckBox.qml \
    $$PWD/../android/qml/uniqt/uikit/ColumnLayout.qml \
    $$PWD/../android/qml/uniqt/uikit/ComboBox.qml \
    $$PWD/../android/qml/uniqt/uikit/Container.qml \
    $$PWD/../android/qml/uniqt/uikit/CoverPage.qml \
    $$PWD/../android/qml/uniqt/uikit/GridLayout.qml \
    $$PWD/../android/qml/uniqt/uikit/HorizontalSpacer.qml \
    $$PWD/../android/qml/uniqt/uikit/Image.qml \
    $$PWD/../android/qml/uniqt/uikit/Item.qml \
    $$PWD/../android/qml/uniqt/uikit/Label.qml \
    $$PWD/../android/qml/uniqt/uikit/LayoutControl.qml \
    $$PWD/../android/qml/uniqt/uikit/LayoutPolitic.qml \
    $$PWD/../android/qml/uniqt/uikit/ListModel.qml \
    $$PWD/../android/qml/uniqt/uikit/Page.qml \
    $$PWD/../android/qml/uniqt/uikit/PasswordField.qml \
    $$PWD/../android/qml/uniqt/uikit/Rectangle.qml \
    $$PWD/../android/qml/uniqt/uikit/Repeater.qml \
    $$PWD/../android/qml/uniqt/uikit/RowLayout.qml \
    $$PWD/../android/qml/uniqt/uikit/SliderButton.qml \
    $$PWD/../android/qml/uniqt/uikit/Text.qml \
    $$PWD/../android/qml/uniqt/uikit/TextField.qml \
    $$PWD/../android/qml/uniqt/uikit/VerticalSpacer.qml \

QML_IMPORT_PATH = $$PWD/../android/qml

DEFINES += \
    QML_IMPORT_PATH_STRING='"\\\"$$QML_IMPORT_PATH\\\""' \
