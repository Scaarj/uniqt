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

        Row {
            spacing: Styles.margins.small

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

    }
}
