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
            text: "Color Page"
            layout.fillWidth: true
        }

        Button {
            text: "Back"
            onClicked: root.close()
        }
    }

    padding: Styles.margins.small
    content: GridLayout {
        anchors {
            margins: Styles.margins.small
            top: parent.top
            left: parent.left
            right: parent.right
        }
        columns: 2
        rowSpacing: Styles.margins.middle

        Repeater {
            model: Styles.colorModel

            Text {
                layout.row: index
                layout.column: 0
                text: modelData[0]
            }
        }

        Repeater {
            model: Styles.colorModel

            Rectangle {
                layout.row: index
                layout.column: 1
                width: 100
                height: 64
                border.width: 1
                color: modelData[1]
            }
        }
    }
}
