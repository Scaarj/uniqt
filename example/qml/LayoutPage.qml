import uniqt.uikit 1.0
import uniqt.styles 1.0

Page {
    id: root

    headerTitle: "Layout Page"

    property int blockWidth: application.width / 6
    property int blockHeight: application.height / 12

    padding: Styles.margins.small
    content: ColumnLayout {
        width: root.contentMaxWidth
        spacing: Styles.margins.small

        RowLayout {
            politic.fillWidth: true
            politic.preferredHeight: blockHeight
            spacing: Styles.margins.small

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        RowLayout {
            layout.alignment: Qt.AlignLeft
            politic.preferredWidth: blockWidth
            politic.preferredHeight: blockHeight

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        RowLayout {
            layout.alignment: Qt.AlignHCenter
            politic.preferredWidth: blockWidth
            politic.preferredHeight: blockHeight

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        RowLayout {
            layout.alignment: Qt.AlignRight
            politic.preferredWidth: blockWidth
            politic.preferredHeight: blockHeight

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        ColumnLayout {
            layout.preferredHeight: blockHeight * 3
            layout.fillWidth: true
            politic.fillHeight: true
            politic.fillWidth: true

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        ColumnLayout {
            layout.alignment: Qt.AlignLeft
            layout.preferredHeight: blockHeight * 3
            layout.preferredWidth: blockWidth
            politic.preferredWidth: blockWidth
            politic.fillHeight: true

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        ColumnLayout {
            layout.alignment: Qt.AlignHCenter
            layout.preferredHeight: blockHeight * 3
            layout.preferredWidth: blockWidth
            politic.preferredWidth: blockWidth
            politic.fillHeight: true

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        ColumnLayout {
            layout.alignment: Qt.AlignRight
            layout.preferredHeight: blockHeight * 3
            layout.preferredWidth: blockWidth
            politic.preferredWidth: blockWidth
            politic.fillHeight: true

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        GridLayout {
            rows: 2
            columns: 2
            layout.preferredHeight: blockHeight * 2
            politic.fillHeight: true
            politic.fillWidth: true

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
            Rectangle { color: "purple" }
        }

        GridLayout {
            layout.alignment: Qt.AlignHCenter
            rows: 2
            columns: 2
            layout.fillWidth: true
            columnSpacing: Styles.margins.small
            rowSpacing: Styles.margins.large

            Rectangle {
                layout.alignment: Qt.AlignTop
                width: blockHeight
                height: blockHeight / 2
                color: "red"
            }
            Rectangle {
                layout.alignment: Qt.AlignRight
                width: blockHeight / 2
                height: blockHeight
                color: "green"
            }
            Rectangle {
                layout.alignment: Qt.AlignBottom | Qt.AlignRight
                width: blockHeight / 2
                height: blockHeight / 2
                color: "blue"
            }
            Rectangle {
                width: blockHeight
                height: blockHeight
                color: "purple"
            }
        }
    }
}
