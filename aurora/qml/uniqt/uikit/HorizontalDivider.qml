import QtQuick 2.6
import Sailfish.Silica 1.0
import QtQuick.Layouts 1.1
import uniqt.styles 1.0

Rectangle {
    property alias layout: layoutControl

    Component.onCompleted: Layout.fillWidth = true
    height: 2
    color: Qt.darker(Styles.colors.background, 5)

    LayoutControl { id: layoutControl }
}

