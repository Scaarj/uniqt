import uniqt.uikit 1.0
import uniqt.styles 1.0

Page {
    id: root

    property var pages: [animationPage, colorPage, controlPage, fontPage, flickablePage,
        graphicPage, iconPage, layoutPage, modifierPage, positionPage]

    headerTitle: "UIKit demonstration"
    visibleBack: false

    content: ColumnLayout {
        id: columnLayout
        politic.preferredWidth: root.contentMaxWidth

        spacing: Styles.px(8)

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
