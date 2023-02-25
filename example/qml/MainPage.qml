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
            text: "Colors"
            onClicked: colorPage.show()
        }

        Button {
            id: controlSectionBtn
            text: "Controls"
            onClicked: controlPage.show()
        }

        Button {
            id: textSectionBtn
            text: "Fonts"
            onClicked: fontPage.show()
        }

        Button {
            id: iconSectionBtn
            text: "Icons"
            onClicked: iconPage.show()
        }

        Button {
            id: layoutSectionBtn
            text: "Layouts"
            onClicked: layoutPage.show()
        }

        Button {
            id: modifierSectionBtn
            text: "Modifier"
            onClicked: modifierPage.show()
        }
    }
}
