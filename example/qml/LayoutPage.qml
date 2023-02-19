import uniqt.uikit 1.0
import uniqt.styles 1.0

Page {
    id: root

    headerTitle: "Layout Page"

    padding: Styles.margins.small
    content: ColumnLayout {
        width: root.contentMaxWidth
        spacing: Styles.margins.middle

        RowLayout {
            politic.fillWidth: true
            politic.preferredHeight: 100

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        RowLayout {
            layout.alignment: Qt.AlignLeft
            politic.preferredWidth: 100
            politic.preferredHeight: 100

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        RowLayout {
            layout.alignment: Qt.AlignHCenter
            politic.preferredWidth: 100
            politic.preferredHeight: 100

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        RowLayout {
            layout.alignment: Qt.AlignRight
            politic.preferredWidth: 100
            politic.preferredHeight: 100

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        ColumnLayout {
            layout.preferredHeight: 300
            layout.fillWidth: true
            politic.fillHeight: true
            politic.fillWidth: true

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        ColumnLayout {
            layout.alignment: Qt.AlignLeft
            layout.preferredHeight: 300
            layout.preferredWidth: 300
            politic.preferredWidth: 300
            politic.fillHeight: true

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        ColumnLayout {
            layout.alignment: Qt.AlignHCenter
            layout.preferredHeight: 300
            layout.preferredWidth: 300
            politic.preferredWidth: 300
            politic.fillHeight: true

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        ColumnLayout {
            layout.alignment: Qt.AlignRight
            layout.preferredHeight: 300
            layout.preferredWidth: 300
            politic.preferredWidth: 300
            politic.fillHeight: true

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        GridLayout {
            rows: 2
            columns: 2
            layout.preferredHeight: 200
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
            columnSpacing: 20
            rowSpacing: 50

            Rectangle {
                layout.alignment: Qt.AlignTop
                width: 100
                height: 50
                color: "red"
            }
            Rectangle {
                layout.alignment: Qt.AlignRight
                width: 50
                height: 100
                color: "green"
            }
            Rectangle {
                layout.alignment: Qt.AlignBottom | Qt.AlignRight
                width: 50
                height: 50
                color: "blue"
            }
            Rectangle {
                width: 100
                height: 100
                color: "purple"
            }
        }
    }
}
