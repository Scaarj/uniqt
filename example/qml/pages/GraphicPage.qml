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
                    color: Styles.colors.secondary
                    width: parent.width - Styles.px(8)
                    height: parent.height - Styles.px(8)
                    anchors.centerIn: parent

                    Text {
                        anchors.centerIn: parent
                        text: "NoShadow"
                        color: Styles.colors.topSecondary
                    }
                }
            }

            Item {
                height: blockHeight
                width: blockWidth

                Rectangle {
                    id: dropShadowRect
                    color: Styles.colors.secondary
                    width: parent.width - Styles.px(8)
                    height: parent.height - Styles.px(8)
                    anchors.centerIn: parent

                    Text {
                        anchors.centerIn: parent
                        text: "DropShadow"
                        color: Styles.colors.topSecondary
                    }
                }

                DropShadow {
                    anchors.fill: dropShadowRect
                    radius: Styles.px(4)
                    samples: 16
                    color: Styles.colors.shadow
                    source: dropShadowRect
                    horizontalOffset: Styles.px(4)
                    verticalOffset: Styles.px(4)
                }
            }

            Item {
                height: blockHeight
                width: blockWidth

                Rectangle {
                    id: innerShadowRect
                    color: Styles.colors.secondary
                    width: parent.width - Styles.px(8)
                    height: parent.height - Styles.px(8)
                    anchors.centerIn: parent

                    Text {
                        anchors.centerIn: parent
                        text: "InnerShsdow"
                        color: Styles.colors.topSecondary
                    }
                }

                InnerShadow {
                    anchors.fill: parent
                    radius: Styles.px(4)
                    samples: 16
                    color: Styles.colors.shadow
                    source: parent
                    smooth: true
                    cached: true
                }
            }
        }
    }
}
