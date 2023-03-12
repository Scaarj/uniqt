import QtQuick.Controls 2.15 as Q
import uniqt.styles 1.0

Q.Button {
    id: root

    property alias layout: layoutControl
    property color bgColor: Styles.colors.background

    implicitHeight: Styles.control.button
    layout.preferredWidth: text.length === 0 ? Styles.button.width.tiny : Styles.button.width.small
    font: Styles.font.type.control
    bottomInset: 1
    topInset: 1
    leftInset: 1
    rightInset: 1

    background: Rectangle {
        color: pressed ? Qt.darker(bgColor, 2) : (hovered ? Qt.darker(bgColor, 1.6) : Qt.darker(bgColor, 1.3))
        radius: Styles.margins.small
    }

    LayoutControl { id: layoutControl }
}
