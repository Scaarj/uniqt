import QtQuick 2.6
import Sailfish.Silica 1.0 as Q
import QtQuick.Layouts 1.1
import uniqt.styles 1.0

Item {
    id: root

    property alias itemPressed:  mouseArea.pressed
    property alias triggerDelay: triggerTimer.interval
    property alias imageSource: image.source
    property alias imageColor:  image.color
    property alias textColor:label.color
    property alias text: label.text
    property alias pressed: mouseArea.pressed
    property bool contentHorizontalCenter: false
    property bool contentVerticalCenter: false
    property bool closeMenuOnClick: true
    property bool timerTriggered: !triggerTimer.running
    property bool hovered: !pressed && triggerTimer.running

    property var rootMenu: parent
    property var indicator: Q.Icon {
        id: image
        width:  height
        height: label.font.pixelSize + Styles.px(12)
        visible: source.toString().length
    }
    property var background: Rectangle {
        id: bgRect
        anchors.fill: parent
    }
    property var contentItem: Label {
        id: label
    }

    signal clicked()
    signal triggered()

    function click()
    {
        if (triggerTimer.running) { return }

        root.clicked()
        if (root.closeMenuOnClick) {
            rootMenu.close()
        }
        triggerTimer.start()
    }

    implicitWidth: parent.width
    implicitHeight: Styles.px(36)

    Item {
        anchors.fill: parent
        data: [
            background
        ]
    }

    Row {
        id: container
        anchors.fill: parent

        leftPadding: Styles.px(8)
        rightPadding: leftPadding
        spacing: indicator ? Styles.px(8) : 0

        Item {
            width: indicator && indicator.visible ? indicator.width : 0
            height: indicator && indicator.visible ? indicator.height : 0
            data: [
                indicator
            ]
        }

        Item {
            width: contentItem && contentItem.visible ? contentItem.width : 0
            height: contentItem && contentItem.visible ? contentItem.height : 0
            data: [
                contentItem
            ]
        }
    }

    Timer {
        id: triggerTimer
        interval: 100
        onTriggered: root.triggered()
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: root.click()
    }
}
