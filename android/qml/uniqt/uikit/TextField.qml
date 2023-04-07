import QtQuick 2.15
import QtQuick.Controls 2.15 as Q
import QtQuick.Layouts 1.5
import QtQuick.Controls.Material 2.15
import uniqt.styles 1.0

Q.TextField {
    id: root

    property alias layout: layoutControl
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

    layout.fillWidth: true
    leftPadding: root.height / 4
    rightPadding: leftPadding

    color: focus ? Styles.colors.primaryText : Styles.colors.secondaryText
    placeholderTextColor: Styles.colors.divider

    background: Rectangle {
        anchors { bottom: root.bottom; bottomMargin: Styles.px(4) }
        width: root.width
        height: Styles.px(2)
        color: root.focus ? Styles.colors.secondary : Styles.colors.background
    }

    LayoutControl { id: layoutControl }
}
