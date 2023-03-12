import QtQuick 2.15

Item {
    property alias layout: layoutControl

    layout.fillHeight: true

    LayoutControl { id: layoutControl }
}
