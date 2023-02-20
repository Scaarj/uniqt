import QtQuick 2.15
import QtQuick.Controls 2.15 as Q
import QtQuick.Layouts 1.15
import QtQuick.Controls.Material 2.15

Q.Label {
    id: label

    property alias layout: layoutControl
    property color backgroundColor: Material.accent

    padding: font.pixelSize / 2
    color: Material.background

    background: Rectangle {
        color: backgroundColor
        radius: label.padding / 2
    }

    LayoutControl { id: layoutControl }
}
