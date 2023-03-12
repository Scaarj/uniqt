import QtQuick.Controls 2.15 as Q

Q.CheckBox {
    property alias layout: layoutControl
    property var buttonGroup: Q.ButtonGroup {}

    Q.ButtonGroup.group: buttonGroup

    LayoutControl { id: layoutControl }
}
