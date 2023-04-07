import QtQuick 2.6
import Sailfish.Silica 1.0 as Q
import QtQuick.Layouts 1.1
import uniqt.styles 1.0

Q.Label {
    id: root

    property alias layout: layoutControl
    property var background: Rectangle {
        anchors.fill: parent
        radius: Styles.px(4)
        color:  Styles.colors.secondary
    }

    leftPadding: Styles.px(8)
    rightPadding: leftPadding
    topPadding: Styles.px(4)
    bottomPadding: topPadding

    color: Styles.colors.topSecondary
    font: Styles.fonts.middle

    LayoutControl { id: layoutControl }

    Item {
        anchors.fill: parent
        z: background ? background.z - 1 : root.z - 1
        data: [
            background
        ]
    }
}
