import uniqt.uikit 1.0
import uniqt.styles 1.0

Page {
    id: root

    headerTitle: "UIKit demonstration"

    content: ColumnLayout {
        id: columnLayout

        anchors {
            margins: Styles.margins.middle
            top: parent.top
            left: parent.left
            right: parent.right
        }

        Button {
            id: colorSectionBtn
            text: "Show color page"
            onClicked: colorPage.show()
            preferredWidth: root.width - columnLayout.anchors.leftMargin - columnLayout.anchors.rightMargin
        }
    }
}
