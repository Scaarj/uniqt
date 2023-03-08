import QtQuick 2.15
import QtQuick.Controls 2.15 as Q
import QtQuick.Layouts 1.15
import QtQuick.Controls.Material 2.15

import uniqt.styles 1.0

Q.Button {
    id: root

    property alias layout: layoutControl
    property color bgColor: Material.backgroundColor

    implicitHeight: Styles.control.button
    layout.preferredWidth: text.length === 0 ? Styles.button.width.tiny : Styles.button.width.small
    font: Qt.font({pixelSize: Styles.font.size.middle, capitalization: Font.MixedCase})
    bottomInset: 1
    topInset: 1
    leftInset: 1
    rightInset: 1

    background: Rectangle {
        color: pressed ? Qt.darker(bgColor, 1.5) : (hovered ? Qt.darker(bgColor, 1.4) : Qt.darker(bgColor, 1.2))
        radius: Styles.margins.small
    }

    LayoutControl { id: layoutControl }
}
