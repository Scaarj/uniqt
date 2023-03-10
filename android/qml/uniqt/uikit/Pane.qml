import QtQuick 2.15

Item {
    id: root

    property var background: null
    property var contentItem: null

    property alias layout: layoutControl
    property alias padding: container.padding
    property alias leftPadding: container.leftPadding
    property alias rightPadding: container.rightPadding
    property alias topPadding: container.topPadding
    property alias bottomPadding: container.bottomPadding

    property int maxContentHeight: root.height - root.topPadding - root.bottomPadding
    property int maxContentWidth: root.width - root.leftPadding - root.rightPadding

    implicitWidth: container.width
    implicitHeight: container.height

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
