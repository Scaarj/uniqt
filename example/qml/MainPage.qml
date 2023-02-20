import uniqt.uikit 1.0
import uniqt.styles 1.0

Page {
    id: root

    headerTitle: "UIKit demonstration"
    visibleBack: false

    padding: Styles.margins.small
    content: ColumnLayout {
        id: columnLayout
        politic.preferredWidth: root.contentMaxWidth

        spacing: Styles.margins.small

        Button {
            id: colorSectionBtn
            text: "Show color page"
            onClicked: colorPage.show()
        }

        Button {
            id: iconSectionBtn
            text: "Show icon page"
            onClicked: iconPage.show()
        }

        Button {
            id: layoutSectionBtn
            text: "Show layout page"
            onClicked: layoutPage.show()
        }

        Button {
            id: controlSectionBtn
            text: "Show control page"
            onClicked: controlPage.show()
        }
    }
}
