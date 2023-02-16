import QtQuick 2.6
import QtQuick.Window 2.0
import Sailfish.Silica 1.0 as Q

import "../styles"

Q.Page {
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
        id: defaultHeader
        anchors {
            right: parent ? parent.right : undefined
            rightMargin: Styles.margins.small
            verticalCenter: parent ? parent.verticalCenter : undefined
        }
        text: headerTitle
        font.pixelSize: Q.Theme.fontSizeLarge
        color: palette.primaryColor
    }
    property int headerHeight: headerContent && headerContent.visible ? Styles.pageSize.header : 0
    property int footerHeight: footerContent && footerContent.visible ? Styles.pageSize.footer : 0
    property int contentMaxHeight: root.height - (topPadding ? topPadding : padding) - (bottomPadding ? bottomPadding : padding) - headerHeight - footerHeight
    property int contentMaxWidth: root.width - (leftPadding ? leftPadding : padding) - (rightPadding ? rightPadding : padding)

    function show()
    {
        application.push(root)
    }

    function close()
    {
        application.pop()
    }

    showNavigationIndicator: false

    Item {
        id: header
        anchors { left: parent.left; right: parent.right; top: parent.top }
        height: root.headerHeight
        z: headerBackground.z + 1
        data: [
            headerContent
        ]
    }

    Rectangle {
        id: headerBackground
        anchors.fill: header
        color: palette.secondaryHighlightColor
        visible: headerContent ? true : false
        z: root.z + 1

        Rectangle {
            anchors.bottom: parent.bottom
            width: parent.width
            height: 2
            color: palette.secondaryHighlightColor
        }
    }

    Q.SilicaFlickable {
        id: flickable
        anchors {
            fill: parent
            topMargin: headerContent ? header.height : 0
            bottomMargin: footerContent ? header.height : 0
        }

        contentWidth: container.width
        contentHeight: container.height

        Container {
            id: container
        }
    }

    Item {
        id: footer
        anchors { left: parent.left; right: parent.right; bottom: parent.bottom }
        height: root.headerHeight
        z: root.z + 1
        data: [
            footerContent
        ]
    }

    Rectangle {
        anchors.fill: footer
        color: Q.Theme.overlayBackgroundColor
        visible: footerContent ? true : false

        Rectangle {
            anchors.top: parent.top
            width: parent.width
            height: 2
            color: Q.Theme.lightSecondaryColor
        }
    }

    LayoutControl { id: layoutControl }
}
