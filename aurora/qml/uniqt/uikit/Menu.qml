import QtQuick 2.6
import QtGraphicalEffects 1.0
import Sailfish.Silica 1.0 as Q
import uniqt.styles 1.0

Rectangle {
    id: root

    property var contentItem: null
    property var background: Rectangle {
        id: bgRect
        anchors.fill: parent
        color:  Styles.colors.background
        radius: root.radius
        border.color: Styles.colors.divider
        border.width: Styles.px(1)
        layer.enabled: root.shadowVisible
        layer.effect:  DropShadow { source: bgRect }
    }

    property string objId
    property string lastObjIdToggled
    property string title
    property bool modal: false
    property bool shadowVisible: true
    property bool closable: false
    property bool isOpen: false

    property int  startYPosition: 0
    property bool inVisibleArea:  true

    signal aboutToShow()
    signal aboutToHide()
    signal primaryClicked()
    signal secondaryClicked()
    signal closed()
    signal opened()

    function setPosition(coordX, coordY)
    {
        if (coordX !== undefined) {
            root.x = coordX
        }
        if (coordY !== undefined) {
            root.y = coordY
        }
    }

    function close()
    {
        visible = false
        closed()
    }

    function open()
    {
        visible = true
        opened()
    }

    function closeEmptyMenu()
    {
        if (!visible) { return }

        var items = contentItem.children

        for (var i = 0; i < items.length; ++i) {
            if (items[i].visible) { return }
        }

        close()
    }

    function toggle()
    {
        // NOTE: Recently menu was closed, but we pressed toggle key
        if (!visible && timer.running) { return }

        if (visible) {
            close()
        } else {
            open()
        }
    }

    function sameObjectToggled()
    {
        return objId === lastObjIdToggled
    }

    onOpened: root.aboutToShow()
    onClosed: root.aboutToHide()

    onVisibleChanged: timer.start()

    onInVisibleAreaChanged:
    {
        if (!inVisibleArea && visible) {
            close()
        }
    }

    implicitWidth: 500//contentItem ? contentItem.width : 0
    implicitHeight: contentItem ? contentItem.height : 0
    width: implicitWidth
    height: implicitHeight
    visible: false

    Component.onCompleted: {
        var contentItemLayotLength = children[1].children[0].children.length

        for (var i = 0; i < contentItemLayotLength; ++i) {
            var item = children[1].children[0].children[i]

            if (item.rootMenu !== undefined) {
                item.rootMenu = root
            }
        }
    }

    Item {
        anchors.fill: parent

        data: [
            background
        ]
    }

    Rectangle {
        id: container
        anchors.fill: parent
        focus: true
        layer.enabled: true
        layer.effect: OpacityMask {
            maskSource: Item {
                width: root.width
                height: root.height
                Rectangle {
                    anchors.centerIn: parent
                    width: root.width
                    height: root.height
                    radius: root.radius
                }
            }
        }

        data: [
            contentItem
        ]
    }

    Q.TouchBlocker {
        id: touchBlocker
        x: -root.x
        y: -root.y
        height: application.height
        width: application.width
        enabled: modal
        z: root.z - 2
    }

    Q.InverseMouseArea {
        anchors.fill: parent
        onClickedOutside:
        {
            if (!modal) {
                close()
            }
        }
    }

    // NOTE: The timer avoids problems when the menu window needs to be hidden on a click on a toggle
    // or a triggering toggle controller (which is also a click condition outside the window zone)
    Timer {
        id: timer
        interval: 100
    }
}
