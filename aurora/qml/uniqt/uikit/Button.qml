import QtQuick 2.6
import Sailfish.Silica 1.0 as Q
import QtQuick.Layouts 1.1
import uniqt.styles 1.0

Q.Button {
    id: root

    property alias layout: layoutControl
    property bool hovered: false
    property int leftPadding: Styles.px(8)
    property int rightPadding: Styles.px(8)
    property color materialBackground: Styles.colors.topPrimary
    property color materialForeground: Styles.colors.primary

    color: materialBackground
    highlightColor: color
    backgroundColor: materialForeground
    implicitHeight: Styles.px(40)

    implicitWidth: text.length === 0 ? implicitHeight : Styles.px(40) + fontMetric.advanceWidth(root.text)
                                       + leftPadding + rightPadding
    icon {
        color: root.color
        height: root.height / 2
        width: icon.height
    }

    onPressAndHold: hovered = true

    onPressedChanged: {
        if (!pressed && hovered) {
            hovered = false
        }
    }

    FontMetrics {
        id: fontMetric
        font: Styles.fonts.middle
    }

    LayoutControl { id: layoutControl }
}
