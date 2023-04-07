import uniqt.uikit 1.0
import uniqt.styles 1.0

Page {
    id: root

    property var sizes: [
        ["ldpi", Styles.ldpi],
        ["mdpi", Styles.mdpi],
        ["tvdpi", Styles.tvdpi],
        ["hdpi", Styles.hdpi],
        ["xhdpi", Styles.xhdpi],
        ["xxhdpi", Styles.xxhdpi],
        ["xxxhdpi", Styles.xxxhdpi]
    ]

    headerTitle: "Icon"
    content: GridLayout {
        id: gridLayout
        width: root.contentMaxWidth
        columns: 2
        rowSpacing: Styles.px(8)

        Repeater {
            model: root.sizes

            Text {
                layout.row: index
                layout.column: 0
                text: modelData[0] + "\nsp: {" + modelData[1] + ", " + modelData[1] + "}"
            }
        }

        Repeater {
            model: root.sizes

            Image {
                layout.row: index
                layout.column: 1
                sourceSize: Qt.size(modelData[1], modelData[1])
                source: "qrc:/icons/cover.svg"
            }
        }
    }
}
