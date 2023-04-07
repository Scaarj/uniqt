import QtQuick.Controls 2.15 as Q
import QtQuick.Controls.Material 2.15
import uniqt.styles 1.0

Q.Label {
    id: root

    property alias layout: layoutControl
    property color materialBackground: Styles.colors.secondary
    property color materialForeground: Styles.colors.topSecondary
    property int materialTheme: Styles.material.theme

    Material.background: materialBackground
    Material.foreground: materialForeground
    Material.theme: materialTheme

    leftPadding: Styles.px(8)
    rightPadding: leftPadding
    topPadding: Styles.px(4)
    bottomPadding: topPadding

    background: Rectangle {
        color: Material.background
        radius: Styles.px(4)
    }

    LayoutControl { id: layoutControl }
}
