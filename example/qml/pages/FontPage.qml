import uniqt.uikit 1.0
import uniqt.styles 1.0

Page {
    id: root

    headerTitle: "Font"

    property var fonts: [
        ["xsmall", Qt.font({pixelSize: Styles.font.size.xsmall}) ],
        ["small",  Qt.font({pixelSize: Styles.font.size.small})  ],
        ["middle", Qt.font({pixelSize: Styles.font.size.middle}) ],
        ["large",  Qt.font({pixelSize: Styles.font.size.large})  ],
        ["xlarge", Qt.font({pixelSize: Styles.font.size.xlarge}) ],
        ["xsmall\nbold", Qt.font({pixelSize: Styles.font.size.xsmall, weight: Font.Bold}) ],
        ["small\nbold",  Qt.font({pixelSize: Styles.font.size.small,  weight: Font.Bold}) ],
        ["middle\nbold", Qt.font({pixelSize: Styles.font.size.middle, weight: Font.Bold}) ],
        ["large\nbold",  Qt.font({pixelSize: Styles.font.size.large,  weight: Font.Bold}) ],
        ["xlarge\nbold", Qt.font({pixelSize: Styles.font.size.xlarge, weight: Font.Bold}) ],
        ["xsmall\nitalic", Qt.font({pixelSize: Styles.font.size.xsmall, italic: true}) ],
        ["small\nitalic",  Qt.font({pixelSize: Styles.font.size.small,  italic: true}) ],
        ["middle\nitalic", Qt.font({pixelSize: Styles.font.size.middle, italic: true}) ],
        ["large\nitalic",  Qt.font({pixelSize: Styles.font.size.large,  italic: true}) ],
        ["xlarge\nitalic", Qt.font({pixelSize: Styles.font.size.xlarge, italic: true}) ],
        ["xsmall\nbold\nitalic", Qt.font({pixelSize: Styles.font.size.xsmall, weight: Font.Bold, italic: true}) ],
        ["small\nbold\nitalic",  Qt.font({pixelSize: Styles.font.size.small,  weight: Font.Bold, italic: true}) ],
        ["middle\nbold\nitalic", Qt.font({pixelSize: Styles.font.size.middle, weight: Font.Bold, italic: true}) ],
        ["large\nbold\nitalic",  Qt.font({pixelSize: Styles.font.size.large,  weight: Font.Bold, italic: true}) ],
        ["xlarge\nbold\nitalic", Qt.font({pixelSize: Styles.font.size.xlarge, weight: Font.Bold, italic: true}) ],
    ]

    padding: Styles.margins.small
    content: GridLayout {
        id: gridLayout
        width: root.contentMaxWidth
        columns: 2
        rowSpacing: Styles.margins.middle

        Repeater {
            id: textRepeater
            model: root.fonts

            Text {
                layout.row: index
                layout.column: 0
                text: modelData[0]
                font: Qt.font({ bold: true })
            }
        }

        Repeater {
            id: fontRepeater
            model: root.fonts

            Text {
                layout.row: index
                layout.column: 1
                font: modelData[1]
                text: "Text font size"
            }
        }
    }
}
