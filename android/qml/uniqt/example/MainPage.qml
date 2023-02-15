import uniqt.uikit 1.0
import uniqt.styles 1.0

Page {
    id: root

    headerTitle: "UIKit demonstration"

    padding: 16
    content: ColumnLayout {
        id: columnLayout
        width: root.contentMaxWidth

        Button {
            text: "Сolor page"
            onClicked: colorPage.show()
            layout.fillWidth: true
        }
    }
}
