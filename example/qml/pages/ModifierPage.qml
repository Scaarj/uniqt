import uniqt.uikit 1.0
import uniqt.styles 1.0

Page {
    id: root

    headerTitle: "Modifier"

    property int blockSize: application.width / 6

    padding: Styles.px(4)
    content: ColumnLayout {
        width: root.contentMaxWidth
        spacing: Styles.px(4)

        Text {
            text: "Layouts"
        }

        Text {
            text: "Modifier on radius"
        }

        RowLayout {
            politic.fillWidth: true
            politic.preferredHeight: blockSize
            modifier.radius: blockSize / 2
            spacing: Styles.px(4)

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        Text {
            text: "Modifier on color"
        }

        RowLayout {
            politic.fillWidth: true
            politic.preferredHeight: blockSize
            modifier.color: "purple"
            spacing: Styles.px(4)

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        Text {
            text: "Modifier on border"
        }

        RowLayout {
            politic.fillWidth: true
            politic.preferredHeight: blockSize
            modifier.borderWidth: Styles.px(4)
            modifier.borderColor: "purple"
            spacing: Styles.px(4)

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        Text {
            text: "Positions"
        }

        Text {
            text: "Row modifier on radius"
        }

        Row {
            spacing: Styles.px(4)
            modifier {
                radius: blockSize / 2
                childHeight: blockSize
                childWidth: blockSize
            }

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        Text {
            text: "Row modifier on color"
        }

        Row {
            spacing: Styles.px(4)
            modifier {
                color: "purple"
                childHeight: blockSize
                childWidth: blockSize
            }

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        Text {
            text: "Row modifier on border"
        }

        Row {
            spacing: Styles.px(4)
            modifier {
                borderWidth: Styles.px(4)
                borderColor: "purple"
                childHeight: blockSize
                childWidth: blockSize
            }

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        Text {
            text: "Column modifier on border"
        }

        Column {
            spacing: Styles.px(4)
            modifier {
                radius: blockSize / 2
                borderWidth: Styles.px(4)
                borderColor: "purple"
                childHeight: blockSize
                childWidth: blockSize
            }

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        Text {
            text: "Grid modifier on border"
        }

        Grid {
            spacing: Styles.px(4)
            rows: 2
            columns: 2
            modifier {
                radius: blockSize / 2
                borderWidth: Styles.px(4)
                borderColor: "purple"
                childHeight: blockSize
                childWidth: blockSize
            }

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
            Rectangle { color: "cyan" }
        }
    }
}
