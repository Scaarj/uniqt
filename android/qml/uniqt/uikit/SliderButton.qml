import QtQuick 2.15
import QtQuick.Controls 2.15 as Q
import QtQuick.Layouts 1.5
import QtQuick.Controls.Material 2.15
import uniqt.styles 1.0

Q.Switch {
    id: root

    property alias layout: layoutControl
    property alias description: descriptionLabel.text
    property color materialAccent: Styles.colors.secondary
    property color materialBackground: Styles.colors.background
    property color materialForeground: Styles.colors.primaryText
    property color materialPrimary: Styles.colors.primary
    property int materialTheme: Styles.material.theme

    Material.accent: materialAccent
    Material.background: materialBackground
    Material.foreground: materialForeground
    Material.primary: materialPrimary
    Material.theme: materialTheme

    bottomPadding: description.length !== 0 ? description.height : 0

    Text {
        id: descriptionLabel
        anchors {
            top: indicator.bottom
            left: indicator.right
            leftMargin: root.spacing
        }

        font.pixelSize: root.font.pixelSize * 0.8
        font.italic: true
        color: Styles.colors.secondaryText
    }

    LayoutControl { id: layoutControl }
}
