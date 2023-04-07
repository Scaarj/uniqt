import QtQuick.Controls 2.15 as Q
import QtQuick.Controls.Material 2.15
import uniqt.styles 1.0

Q.CheckBox {
    property alias layout: layoutControl
    property color materialAccent: Styles.colors.secondary
    property color materialBackground: Styles.colors.background
    property color materialForeground: Styles.colors.primaryText
    property color materialPrimary: Styles.colors.primary
    property var buttonGroup: Q.ButtonGroup {}

    Q.ButtonGroup.group: buttonGroup

    Material.accent: materialAccent
    Material.background: materialBackground
    Material.foreground: materialForeground
    Material.primary: materialPrimary

    LayoutControl { id: layoutControl }
}
