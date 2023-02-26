import uniqt.uikit 1.0
import uniqt.styles 1.0

Page {
    id: root

    property int blockWidth: application.width / 4
    property int blockHeight: application.height / 12
    property var noShadow: Item {}
    property var dropShadow: DropShadow {}
    property var innerShadow: InnerShadow {}
    property var shadows: [
        ["NoShadow", noShadow],
        ["DropShadow", dropShadow],
        ["InnerShadow", innerShadow]
    ]

    headerTitle: "Graphic"

    padding: Styles.margins.small
    content: ColumnLayout {
        id: gridLayout
        width: root.contentMaxWidth

        RowLayout {
            width: parent.width
            height: blockHeight
            politic.fillWidth: true
            layout.alignment: Qt.AlignCenter

            Item {
                height: blockHeight
                width: blockWidth

                Rectangle {
                    color: "lightgrey"
                    width: parent.width - Styles.margins.middle
                    height: parent.height - Styles.margins.middle
                    anchors.centerIn: parent

                    Text {
                        anchors.centerIn: parent
                        text: "NoShadow"
                        font.pixelSize: Styles.font.size.xsmall
                    }
                }
            }

            Item {
                height: blockHeight
                width: blockWidth

                Rectangle {
                    id: dropShadowRect
                    color: "lightgrey"
                    width: parent.width - Styles.margins.middle
                    height: parent.height - Styles.margins.middle
                    anchors.centerIn: parent

                    Text {
                        anchors.centerIn: parent
                        text: "DropShadow"
                        font.pixelSize: Styles.font.size.xsmall
                    }
                }

                DropShadow {
                    anchors.fill: dropShadowRect
                    radius: Styles.shadow.size.small
                    samples: 16
                    color: "#80000000"
                    source: dropShadowRect
                    horizontalOffset: Styles.margins.small
                    verticalOffset: Styles.margins.small
                }
            }

            Item {
                height: blockHeight
                width: blockWidth

                Rectangle {
                    id: innerShadowRect
                    color: "lightgrey"
                    width: parent.width - Styles.margins.middle
                    height: parent.height - Styles.margins.middle
                    anchors.centerIn: parent

                    Text {
                        anchors.centerIn: parent
                        text: "InnerShsdow"
                        font.pixelSize: Styles.font.size.xsmall
                    }
                }

                InnerShadow {
                    anchors.fill: parent
                    radius: Styles.shadow.size.small
                    samples: 16
                    color: "#80000000"
                    source: parent
                    smooth: true
                    cached: true
                }
            }
        }
    }
}
