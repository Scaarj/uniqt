import QtQuick 2.6
import Sailfish.Silica 1.0 as Q
import QtQuick.Layouts 1.1
import uniqt.styles 1.0

Q.Button {
    id: root

    property alias layout: layoutControl
    property bool hovered: false
    property var bgColor: undefined
    property int leftPadding: Styles.px(8)
    property int rightPadding: Styles.px(8)

    color: Styles.colors.topPrimary
    highlightColor: color
    backgroundColor: Styles.colors.primary
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
