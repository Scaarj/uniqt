import uniqt.uikit 1.0
import uniqt.styles 1.0

Page {
    id: root

    property var sizes: [
        ["ldpi", Styles.iconSize.ldpi],
        ["mdpi", Styles.iconSize.mdpi],
        ["tvdpi", Styles.iconSize.tvdpi],
        ["hdpi", Styles.iconSize.hdpi],
        ["xhdpi", Styles.iconSize.xhdpi],
        ["xxhdpi", Styles.iconSize.xxhdpi],
        ["xxxhdpi", Styles.iconSize.xxxhdpi]
    ]

    headerTitle: "Icon Page"
    padding: Styles.margins.small
    content: GridLayout {
        id: gridLayout
        width: root.contentMaxWidth
        columns: 2
        rowSpacing: Styles.margins.middle

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
