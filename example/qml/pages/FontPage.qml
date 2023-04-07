import uniqt.uikit 1.0
import uniqt.styles 1.0

Page {
    id: root

    headerTitle: "Font"

    property var fonts: [
        ["caption", Styles.fonts.caption ],
        ["small", Styles.fonts.small ],
        ["smallDemiBold", Styles.fonts.smallDemiBold ],
        ["middleDemiBold", Styles.fonts.middleDemiBold ],
        ["largeHeighted", Styles.fonts.largeHeighted ],
        ["large", Styles.fonts.large ],
        ["largeDemiBold", Styles.fonts.largeDemiBold ],
        ["xlargeHeighted", Styles.fonts.xlargeHeighted ],
        ["xlarge", Styles.fonts.xlarge ],
        ["xlargeDemiBold", Styles.fonts.xlargeDemiBold ],
        ["headlineSmall", Styles.fonts.headlineSmall ],
        ["headlineMiddle", Styles.fonts.headlineMiddle ],
        ["headlineLarge", Styles.fonts.headlineLarge ],
        ["displaySmall", Styles.fonts.displaySmall ],
        ["displayMiddle", Styles.fonts.displayMiddle ],
        ["displayLarge", Styles.fonts.displayLarge ],
        ["px12",  Qt.font({pixelSize: Styles.fonts.px12}) ],
        ["px14", Qt.font({pixelSize: Styles.fonts.px14}) ],
        ["px16",  Qt.font({pixelSize: Styles.fonts.px16}) ],
        ["px18", Qt.font({pixelSize: Styles.fonts.px18}) ],
        ["px12\nbold",  Qt.font({pixelSize: Styles.fonts.px12, weight: Font.Bold}) ],
        ["px14\nbold", Qt.font({pixelSize: Styles.fonts.px14, weight: Font.Bold}) ],
        ["px16\nbold",  Qt.font({pixelSize: Styles.fonts.px16, weight: Font.Bold}) ],
        ["px18\nbold", Qt.font({pixelSize: Styles.fonts.px18, weight: Font.Bold}) ],
        ["px12\nitalic",  Qt.font({pixelSize: Styles.fonts.px12, italic: true}) ],
        ["px14\nitalic", Qt.font({pixelSize: Styles.fonts.px14, italic: true}) ],
        ["px16\nitalic",  Qt.font({pixelSize: Styles.fonts.px16, italic: true}) ],
        ["px18\nitalic", Qt.font({pixelSize: Styles.fonts.px18, italic: true}) ],
        ["px12\nbold\nitalic",  Qt.font({pixelSize: Styles.fonts.px12, weight: Font.Bold, italic: true}) ],
        ["px14\nbold\nitalic", Qt.font({pixelSize: Styles.fonts.px14, weight: Font.Bold, italic: true}) ],
        ["px16\nbold\nitalic",  Qt.font({pixelSize: Styles.fonts.px16, weight: Font.Bold, italic: true}) ],
        ["px18\nbold\nitalic", Qt.font({pixelSize: Styles.fonts.px18, weight: Font.Bold, italic: true}) ],
    ]

    padding: Styles.px(4)
    content: GridLayout {
        id: gridLayout
        width: root.contentMaxWidth
        columns: 2
        rowSpacing: Styles.px(8)

        Repeater {
            id: textRepeater
            model: root.fonts

            Text {
                layout.row: index
                layout.column: 0
                text: modelData[0]
                font: modelData[1]
            }
        }
    }
}
