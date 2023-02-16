import uniqt.uikit 1.0
import uniqt.styles 1.0

Page {
    id: root

    headerTitle: "UIKit demonstration"

    padding: 16
    content: ColumnLayout {
        id: columnLayout
        politic.preferredWidth: root.contentMaxWidth

        Button {
            id: colorSectionBtn
            text: "Show color page"
            onClicked: colorPage.show()
        }

        Button {
            id: layoutSectionBtn
            text: "Show layout page"
            onClicked: layoutPage.show()
        }
    }
}
