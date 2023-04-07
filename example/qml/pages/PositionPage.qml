import uniqt.uikit 1.0
import uniqt.styles 1.0

Page {
    id: root

    headerTitle: "Position"

    property int blockWidth: application.width / 6
    property int blockHeight: application.height / 12

    padding: Styles.px(4)
    content: ColumnLayout {
        width: root.contentMaxWidth
        spacing: Styles.px(4)

        Text {
            text: "Row positions. LayoutDirection Qt.LeftToRight"
        }

        Row {
            layoutDirection: Qt.LeftToRight

            Rectangle {
                color: "red"
                height: blockHeight
                width: blockWidth
            }

            Rectangle {
                color: "green"
                height: blockHeight
                width: blockWidth
            }

            Rectangle {
                color: "blue"
                height: blockHeight
                width: blockWidth
            }
        }

        Text {
            text: "Row positions. LayoutDirection Qt.RightToLeft"
        }

        Row {
            layoutDirection: Qt.RightToLeft

            Rectangle {
                color: "red"
                height: blockHeight
                width: blockWidth
            }

            Rectangle {
                color: "green"
                height: blockHeight
                width: blockWidth
            }

            Rectangle {
                color: "blue"
                height: blockHeight
                width: blockWidth
            }
        }

        Text {
            text: "Column positions"
        }

        Column {
            Rectangle {
                color: "red"
                height: blockHeight
                width: blockWidth
            }

            Rectangle {
                color: "green"
                height: blockHeight
                width: blockWidth
            }

            Rectangle {
                color: "blue"
                height: blockHeight
                width: blockWidth
            }
        }

        Text {
            text: "Grid positions"
        }

        Grid {
            rows: 2
            columns: 2

            Rectangle {
                color: "red"
                height: blockHeight
                width: blockWidth
            }

            Rectangle {
                color: "green"
                height: blockHeight
                width: blockWidth
            }

            Rectangle {
                color: "blue"
                height: blockHeight
                width: blockWidth
            }

            Rectangle {
                color: "purple"
                height: blockHeight
                width: blockWidth
            }
        }
    }
}
