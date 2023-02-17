import uniqt.uikit 1.0
import uniqt.styles 1.0

Page {
    id: root

    headerTitle: "Layout Page"

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
