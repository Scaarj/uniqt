import uniqt.uikit 1.0
import uniqt.styles 1.0

Page {
    id: root

    headerTitle: "Layout"

    property int blockWidth: application.width / 6
    property int blockHeight: application.height / 12

    content: ColumnLayout {
        width: root.contentMaxWidth

        Text {
            text: "Politic on fillWidth"
        }

        RowLayout {
            politic.fillWidth: true
            politic.preferredHeight: blockHeight
            spacing: Styles.px(4)

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        Text {
            text: "Politic on left alignment"
        }

        RowLayout {
            layout.alignment: Qt.AlignLeft
            politic.preferredWidth: blockWidth
            politic.preferredHeight: blockHeight

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        Text {
            text: "Politic on center alignment"
        }

        RowLayout {
            layout.alignment: Qt.AlignHCenter
            politic.preferredWidth: blockWidth
            politic.preferredHeight: blockHeight

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        Text {
            text: "Politic on right alignment"
        }

        RowLayout {
            layout.alignment: Qt.AlignRight
            politic.preferredWidth: blockWidth
            politic.preferredHeight: blockHeight

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }


        Text {
            text: "Politic on fillWidth"
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

        Text {
            text: "Politic on left alignment"
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

        Text {
            text: "Politic on center alignment"
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

        Text {
            text: "Politic on right alignment"
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

        Text {
            text: "Politic on fillHeight and fillWidth"
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

        Text {
            text: "Different layout alignment"
        }

        GridLayout {
            layout.alignment: Qt.AlignHCenter
            layout.fillWidth: true
            rows: 2
            columns: 2
            columnSpacing: Styles.px(4)
            rowSpacing: Styles.px(16)

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
