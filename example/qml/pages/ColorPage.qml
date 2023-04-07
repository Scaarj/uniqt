import uniqt.uikit 1.0
import uniqt.styles 1.0

Page {
    id: root

    headerTitle: "Color"

    padding: Styles.px(4)
    content: GridLayout {
        id: gridLayout
        width: root.contentMaxWidth
        columns: 2
        rowSpacing: Styles.px(8)

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
                width: Styles.px(64)
                height: Styles.px(24)
                border.width: 1
                color: modelData[1]
            }
        }
    }
}
