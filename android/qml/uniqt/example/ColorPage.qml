import QtQuick.Controls.Material 2.15
import uniqt.uikit 1.0
import uniqt.styles 1.0

Page {
    id: root

    property var colorModel: [
        ["accentColor", Material.accentColor],
        ["backgroundColor", Material.backgroundColor],
        ["backgroundDimColor", Material.backgroundDimColor],
        ["buttonColor", Material.buttonColor],
        ["buttonDisabledColor", Material.buttonDisabledColor],
        ["dialogColor", Material.dialogColor],
        ["dividerColor", Material.dividerColor],
        ["dropShadowColor", Material.dropShadowColor],
        ["frameColor", Material.frameColor],
        ["highlightedButtonColor", Material.highlightedButtonColor],
        ["highlightedRippleColor", Material.highlightedRippleColor],
        ["hintTextColor", Material.hintTextColor],
        ["iconColor", Material.iconColor],
        ["iconDisabledColor", Material.iconDisabledColor],
        ["listHighlightColor", Material.listHighlightColor],
        ["primaryColor", Material.primaryColor],
        ["primaryHighlightedTextColor", Material.primaryHighlightedTextColor],
        ["primaryTextColor", Material.primaryTextColor],
        ["rippleColor", Material.rippleColor],
        ["scrollBarColor", Material.scrollBarColor],
        ["scrollBarHoveredColor", Material.scrollBarHoveredColor],
        ["scrollBarPressedColor", Material.scrollBarPressedColor],
        ["secondaryTextColor", Material.secondaryTextColor],
        ["spinBoxDisabledIconColor", Material.spinBoxDisabledIconColor]
    ]

    headerContent: RowLayout {
        anchors {
            verticalCenter: parent.verticalCenter
            left: parent.left
            right: parent.right
            leftMargin: 16
            rightMargin: anchors.leftMargin
        }

        Text {
            text: "Color Page"
            font.pixelSize: Styles.textSize.middle
            color: Material.primaryTextColor
            layout.fillWidth: true
        }

        Button {
            text: "Back"
            onClicked: root.close()
        }
    }

    padding: Styles.margins.middle
    content: GridLayout {
        width: root.contentMaxWidth
        columns: 2
        rowSpacing: Styles.margins.small

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
                height: 24
                border.width: 1
                color: modelData[1]
            }
        }
    }
}
