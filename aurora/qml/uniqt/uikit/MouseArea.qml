import QtQuick 2.6 as Q

Q.MouseArea {
    property alias layout: layoutControl
    property bool hovered: false

    onPressAndHold: hovered = true
    onReleased: hovered = false

    LayoutControl { id: layoutControl }
}
