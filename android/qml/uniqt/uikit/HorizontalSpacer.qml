import QtQuick 2.15
import QtQuick.Layouts 1.15

Item {
    property alias layout: layoutControl
    layout.fillWidth: true

    LayoutControl { id: layoutControl }
}
