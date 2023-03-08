import QtQuick 2.6
import Sailfish.Silica 1.0
import QtQuick.Layouts 1.1

Rectangle {
    property alias layout: layoutControl

    Component.onCompleted: Layout.fillWidth = true
    height: 2
    color: Qt.darker(Theme.overlayBackgroundColor, 5)

    LayoutControl { id: layoutControl }
}

