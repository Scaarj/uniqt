import QtQuick 2.15
Item {
    property alias layout: layoutControl

    layout.fillWidth: true

    LayoutControl { id: layoutControl }
}
