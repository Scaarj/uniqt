import QtQuick 2.6
import QtQuick.Window 2.0
import Sailfish.Silica 1.0 as Q
import uniqt.styles 1.0

import "." as Base
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
    property alias visibleBack: backButton.visible
    property int maximumWidth: root.width - leftPadding - rightPadding
    property var footerContent
    property string headerTitle

    property var headerContent: Item {
        anchors {
            verticalCenter: parent ? parent.verticalCenter : undefined
            left: parent ? parent.left : undefined
            right: parent ? parent.right : undefined
            leftMargin: Styles.margins.middle
            rightMargin: anchors.leftMargin
        }

        Button {
            id: backButton
            anchors {
                verticalCenter: parent.verticalCenter
                left: parent.left
            }

            icon.source: "image://theme/icon-m-back"
            icon.width: root.headerHeight / 2
            icon.height: root.headerHeight / 2
            icon.color: Styles.colors.primary
            onClicked: root.close()
            backgroundColor: "transparent"
        }

        Base.Text {
            anchors {
                verticalCenter: parent.verticalCenter
                right: parent.right
            }

            text: root.headerTitle
            font: Styles.font.type.header
        }
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
        color: Styles.colors.darkerHighlight
        visible: headerContent ? true : false
        z: root.z + 1
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
            padding: Styles.margins.middle
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
        color: Styles.colors.background
        visible: footerContent ? true : false

        HorizontalDivider {
            anchors.top: { left: parent.left; parent.top }
            width: parent.width

        }
    }

    LayoutControl { id: layoutControl }
}
