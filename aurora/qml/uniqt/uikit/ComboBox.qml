import QtQuick 2.6
import Sailfish.Silica 1.0 as Q
import QtQuick.Layouts 1.1

Q.ComboBox {
    id: root

    property alias layout: layoutControl
    property bool fillWidth: false
    signal completed()

    Layout.fillWidth: fillWidth
    Component.onCompleted: root.completed()

    LayoutControl { id: layoutControl }
}
