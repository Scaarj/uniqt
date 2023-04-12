import QtQuick 2.6

Item {
    property alias layout: layoutControl

    Component.onCompleted: layout.fillHeight = true

    LayoutControl { id: layoutControl }
}
