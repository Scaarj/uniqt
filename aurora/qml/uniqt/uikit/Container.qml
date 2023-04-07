import QtQuick 2.6

Item {
    id: root

    property alias layout: layoutControl
    property var background: null
    property var contentItem: null

    property alias leftPadding: container.leftPadding
    property alias rightPadding: container.rightPadding
    property alias topPadding: container.topPadding
    property alias bottomPadding: container.bottomPadding

    property int maxContentHeight: root.height - root.topPadding - root.bottomPadding
    property int maxContentWidth: root.width - root.leftPadding - root.rightPadding

    width: container.width
    height: container.height
    implicitWidth: width
    implicitHeight: height

    Item {
        anchors.fill: parent
        data: [
            background
        ]
    }

    Column {
        id: container

        Item {
            width: contentItem ? contentItem.width : 0
            height: contentItem ? contentItem.height : 0
            data: [
                contentItem
            ]
        }
    }

    LayoutControl { id: layoutControl }
}
