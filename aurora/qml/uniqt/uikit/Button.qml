import QtQuick 2.6
import Sailfish.Silica 1.0 as Q
import QtQuick.Layouts 1.1
import uniqt.styles 1.0

Q.Button {
    id: root

    property alias layout: layoutControl
    property bool hovered: false
    property var bgColor: undefined

    color: bgColor ? Qt.darker(bgColor, 10) : Styles.colors.primary
    highlightBackgroundColor: bgColor ? Qt.darker(bgColor, 20) : Q.Theme.rgba(Styles.colors.backgroundHighlight, Q.Theme.opacityFaint)
    highlightColor: bgColor ? Qt.darker(bgColor, 10) : Styles.colors.primaryHighlight

    icon.height: root.height / 2
    icon.width: icon.height

    onPressAndHold: {
        hovered = true
    }

    onPressedChanged: {
        if (!pressed && hovered) {
            hovered = false
        }
    }

    LayoutControl { id: layoutControl }
}
