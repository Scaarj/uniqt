import uniqt.uikit 1.0
import uniqt.styles 1.0

Page {
    id: root

    headerContent: RowLayout {
        anchors {
            verticalCenter: parent.verticalCenter
            left: parent.left
            right: parent.right
            leftMargin: Styles.margins.middle
            rightMargin: anchors.leftMargin
        }

        Text {
            text: "Layout Page"
            layout.fillWidth: true
        }

        Button {
            text: "Back"
            onClicked: root.close()
        }
    }

    padding: Styles.margins.small
    content: ColumnLayout {
        width: root.contentMaxWidth
        height: root.contentMaxHeight

        RowLayout {
            layout.fillWidth: true
            politic.fillWidth: true
            politic.fillHeight: true

            Rectangle {
                color: "red"
            }

            Rectangle {
                color: "green"
            }

            Rectangle {
                color: "blue"
            }
        }
    }
}
