import uniqt.uikit 1.0
import uniqt.styles 1.0

Page {
    id: root

    property var pages: [colorPage, controlPage, fontPage, graphicPage, iconPage, layoutPage, modifierPage, positionPage]

    headerTitle: "UIKit demonstration"
    visibleBack: false

    padding: Styles.margins.small
    content: ColumnLayout {
        id: columnLayout
        politic.preferredWidth: root.contentMaxWidth

        spacing: Styles.margins.small

        Repeater {
            model: pages
            Button {
                text: modelData.headerTitle
                onClicked: modelData.show()
                layout.fillWidth: true
            }
        }
    }
}
