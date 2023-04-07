import QtQuick.Controls 2.15 as Q
import QtQuick.Controls.Material 2.15
import uniqt.styles 1.0

Q.Button {
    id: root

    property alias layout: layoutControl
    property color bgColor: Styles.colors.background
    property color materialBackground: Styles.colors.topPrimary
    property color materialForeground: Styles.colors.primary
    property int materialTheme: Styles.material.theme

    Material.background: flat ? "transparent" : materialForeground
    Material.foreground: materialBackground
    Material.theme: materialTheme

    implicitHeight: Styles.px(40)
    layout.preferredWidth: text.length === 0 ? implicitHeight : Styles.px(40) + fontMetric.advanceWidth(root.text)
                                               + leftPadding + rightPadding
    font: Styles.fonts.middle
    bottomInset: 1
    topInset: 1
    leftInset: 1
    rightInset: 1

    FontMetrics {
        id: fontMetric
        font: root.font
    }

    LayoutControl { id: layoutControl }
}
