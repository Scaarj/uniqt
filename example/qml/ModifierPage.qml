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

        Text {
            text: "Modifier on radius"
        }

        RowLayout {
            politic.fillWidth: true
            politic.preferredHeight: blockHeight
            modifier.radius: blockHeight / 2
            spacing: Styles.margins.small

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        Text {
            text: "Modifier on color"
        }

        RowLayout {
            politic.fillWidth: true
            politic.preferredHeight: blockHeight
            modifier.color: "purple"
            spacing: Styles.margins.small

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }

        Text {
            text: "Modifier on border"
        }

        RowLayout {
            politic.fillWidth: true
            politic.preferredHeight: blockHeight
            modifier.borderWidth: Styles.margins.small
            modifier.borderColor: "purple"
            spacing: Styles.margins.small

            Rectangle { color: "red" }
            Rectangle { color: "green" }
            Rectangle { color: "blue" }
        }
    }
}
