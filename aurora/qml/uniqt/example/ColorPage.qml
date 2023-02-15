import Sailfish.Silica 1.0
import uniqt.uikit 1.0
import uniqt.styles 1.0

Page {
    id: root

    property var colorModel: [
        ["Theme.primaryColor", Theme.primaryColor],
        ["Theme.secondaryColor", Theme.secondaryColor],
        ["Theme.highlightColor", Theme.highlightColor],
        ["Theme.secondaryHighlightColor", Theme.secondaryHighlightColor],
        ["Theme.highlightDimmerColor", Theme.highlightDimmerColor],
        ["Theme.lightPrimaryColor", Theme.lightPrimaryColor],
        ["Theme.lightSecondaryColor", Theme.lightSecondaryColor],
        ["Theme.darkPrimaryColor", Theme.darkPrimaryColor],
        ["Theme.darkSecondaryColor", Theme.darkSecondaryColor],
        ["Theme.highlightBackgroundColor", Theme.highlightBackgroundColor],
        ["palete.primaryColor", palette.primaryColor],
        ["palete.secondaryColor", palette.secondaryColor],
        ["palete.secondaryHighlightColor", palette.secondaryHighlightColor],
        ["palete.highlightColor", palette.highlightColor],
        ["palete.highlightBackgroundColor", palette.highlightBackgroundColor],
        ["palete.highlightDimmerColor", palette.highlightDimmerColor],
        ["palete.overlayBackgroundColor", palette.overlayBackgroundColor],
        ["palete.errorColor", palette.errorColor]
    ]

    headerContent: RowLayout {
        anchors {
            verticalCenter: parent.verticalCenter
            left: parent.left
            right: parent.right
            leftMargin: Styles.margins.middle
            rightMargin: anchors.leftMargin
        }

        Text {
            text: "Color Page"
            layout.fillWidth: true
        }

        Button {
            text: "Back"
            onClicked: root.close()
        }
    }

    padding: Styles.margins.small
    content: GridLayout {
        anchors {
            margins: Styles.margins.small
            top: parent.top
            left: parent.left
            right: parent.right
        }
        columns: 2
        rowSpacing: Styles.margins.middle

        Repeater {
            model: colorModel

            Text {
                layout.row: index
                layout.column: 0
                text: modelData[0]
            }
        }

        Repeater {
            model: colorModel

            Rectangle {
                layout.row: index
                layout.column: 1
                width: 100
                height: 64
                border.width: 1
                color: modelData[1]
            }
        }
    }
}
