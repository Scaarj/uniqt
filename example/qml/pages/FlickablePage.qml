import uniqt.uikit 1.0
import uniqt.styles 1.0

Page {
    id: root

    property int flickableHieght: application.height / 3
    property int flickableWidth: application.width / 2
    property int bigPixelSize: application.height / 10

    headerTitle: "Flickable"

    padding: Styles.margins.small
    content: ColumnLayout {
        id: gridLayout
        width: root.contentMaxWidth

        Text {
            text: "Flickable demo"
        }

        Flickable {
            width: flickableWidth
            height: flickableHieght
            contentWidth: flickableContent.width
            contentHeight: flickableContent.height
            clip: true

            Text {
                id: flickableContent
                text: "Very big and wide text\nVery big and wide text\nVery big and wide text\nVery big and wide text\nVery big and wide text\nVery big and wide text"
                font.pixelSize: bigPixelSize
            }
        }

        Text {
            text: "ListView demo"
        }

        ListView {
            width: flickableWidth
            height: flickableHieght
            clip: true

            model: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

            delegate: Text {
                text: modelData
                font.pixelSize: bigPixelSize
            }
        }
    }
}
