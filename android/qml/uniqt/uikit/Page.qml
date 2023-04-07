import QtQuick 2.15
import QtQuick.Controls 2.15 as Q

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
    property alias headerBackground: headerBackground
    property alias visibleBack: backButton.visible
    property int maximumWidth: root.width - leftPadding - rightPadding
    property var footerContent
    property string headerTitle

    property var headerContent: Item {
        anchors {
            verticalCenter: parent ? parent.verticalCenter : undefined
            left: parent ? parent.left : undefined
            right: parent ? parent.right : undefined
            leftMargin: Styles.px(8)
            rightMargin: anchors.leftMargin
        }

        Button {
            id: backButton
            anchors {
                verticalCenter: parent.verticalCenter
                left: parent.left
            }

            icon.source: "qrc:/icons/back_arrow.svg"
            icon.width: root.headerHeight / 2
            icon.height: root.headerHeight / 2
            padding: 0
            flat: true
            onClicked: root.close()
            width: height

            materialForeground: "transparent"
            materialBackground: Styles.colors.topPrimary
        }

        Text {
            anchors {
                verticalCenter: parent.verticalCenter
                right: parent.right
            }

            text: root.headerTitle
            font: Styles.fonts.headlineMiddle
            color: Styles.colors.topPrimary
        }
    }

    property int headerHeight: headerContent && headerContent.visible ? Styles.px(52) : 0
    property int footerHeight: footerContent && footerContent.visible ? Styles.px(52) : 0
    property int contentMaxHeight: root.height - (topPadding ? topPadding : padding) - (bottomPadding ? bottomPadding : padding) - headerHeight - footerHeight
    property int contentMaxWidth: root.width - (leftPadding ? leftPadding : padding) - (rightPadding ? rightPadding : padding)

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

    Rectangle {
        id: background
        anchors.fill: parent
        color: Styles.colors.background
    }

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
        visible: headerContent ? headerContent.visible : false
        z: root.z + 1
        color: Styles.colors.primary
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
            padding: Styles.px(8)
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
        color: Styles.colors.background
        visible: footerContent ? true : false

        HorizontalDivider {
            anchors.top: parent.top
            width: parent.width
        }
    }

    LayoutControl { id: layoutControl }
}
