import QtQuick 2.15
import QtQuick.Layouts 1.15

Item {
    property alias layout: layoutControl

    layout.fillHeight: true

    LayoutControl { id: layoutControl }
}
