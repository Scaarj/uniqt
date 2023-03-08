import QtQuick 2.6
import Sailfish.Silica 1.0 as Q
import QtQuick.Layouts 1.1

Q.Button {
    id: root

    property alias layout: layoutControl

    property var bgColor: undefined
    color: bgColor ? Qt.darker(bgColor, 10) : palette.primaryColor
    highlightBackgroundColor: bgColor ? Qt.darker(bgColor, 20) : Q.Theme.rgba(palette.highlightBackgroundColor, Q.Theme.opacityFaint)
    highlightColor: bgColor ? Qt.darker(bgColor, 10) : palette.highlightColor

    icon.height: root.height / 2
    icon.width: icon.height

    LayoutControl { id: layoutControl }
}
