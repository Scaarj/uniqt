import QtQuick 2.15
import QtQuick.Controls 2.15 as Q
import QtQuick.Layouts 1.15

Q.ComboBox {
    id: root

    property alias layout: layoutControl
    signal completed()

    Layout.fillWidth: fillWidth
    Component.onCompleted: root.completed()

    LayoutControl { id: layoutControl }
}
