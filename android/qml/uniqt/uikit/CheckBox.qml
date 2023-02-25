import QtQuick 2.15
import QtQuick.Controls 2.15 as Q
import QtQuick.Layouts 1.15

Q.CheckBox {
    property alias layout: layoutControl
    property var buttonGroup: Q.ButtonGroup {}

    Q.ButtonGroup.group: buttonGroup

    LayoutControl { id: layoutControl }
}
