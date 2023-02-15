import QtQuick 2.15
import QtQuick.Controls 2.15 as Q
import QtQuick.Layouts 1.15
import QtQuick.Controls.Material 2.15

import uniqt.styles 1.0

Rectangle {
    id: root

    property alias layout: layoutControl
    property alias padding: container.padding
    property alias leftPadding: container.leftPadding
    property alias rightPadding: container.rightPadding
    property alias topPadding: container.topPadding
    property alias bottomPadding: container.bottomPadding
    property alias container: flickable
    property alias header: header
    property alias content: container.contentItem
    property alias footer: footer
    property var footerContent
    property string headerTitle
    property var headerContent: Text {
        anchors {
            right: parent ? parent.right : undefined
            rightMargin: Styles.margins.small
            verticalCenter: parent ? parent.verticalCenter : undefined
        }
        text: headerTitle
        font.pixelSize: Styles.textSize.middle
        color: Material.primaryTextColor
    }
    property int contentMaxHeight: root.height - (topPadding ? topPadding : padding) - (bottomPadding ? bottomPadding : padding)
    property int contentMaxWidth: root.width - (leftPadding ? leftPadding : padding) - (rightPadding ? rightPadding : padding)
    property int headerHeight: Styles.pageSize.header
    property int footerHeight: Styles.pageSize.footer

    function show()
    {
        application.push(root)
        visible = true
    }

    function close()
    {
        application.pop()
        visible = false
    }

    visible: false

    Item {
        id: header
        height: root.headerHeight
        width: root.width
        z: headerBackground.z + 1

        data: [
            headerContent
        ]
    }

    Rectangle {
        id: headerBackground
        anchors.fill: header
        color: Material.backgroundColor
        visible: headerContent ? headerContent.visible : false
        z: root.z + 1

        Rectangle {
            anchors.bottom: parent.bottom
            width: parent.width
            height: 2
            color: Material.backgroundDimColor
        }
    }

    Flickable {
        id: flickable
        anchors {
            fill: parent
            topMargin: headerContent ? header.height : 0
            bottomMargin: footerContent ? header.height : 0
        }

        contentWidth: container.width
        contentHeight: container.height
        boundsBehavior: Flickable.StopAtBounds

        Container {
            id: container
        }
    }

    Item {
        id: footer

        height: root.footerHeight
        width: root.width
        z: root.z + 1

        data: [
            footerContent
        ]
    }

    Rectangle {
        anchors.fill: footer
        color: Material.backgroundColor
        visible: footerContent ? true : false

        Rectangle {
            anchors.top: parent.top
            width: parent.width
            height: 2
            color: Material.backgroundDimColor
        }
    }

    LayoutControl { id: layoutControl }
}
