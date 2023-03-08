import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls.Material 2.15

Rectangle {
    property alias layout: layoutControl

    layout.fillWidth: true
    height: 1
    color: Qt.darker(Material.backgroundColor, 5)

    LayoutControl { id: layoutControl }
}
