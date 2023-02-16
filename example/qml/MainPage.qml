import uniqt.uikit 1.0
import uniqt.styles 1.0

Page {
    id: root

    headerTitle: "UIKit demonstration"

    padding: Styles.margins.middle
    content: ColumnLayout {
        id: columnLayout
        politic.preferredWidth: root.contentMaxWidth

        spacing: Styles.margins.middle

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
