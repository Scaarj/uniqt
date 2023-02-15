import QtQuick 2.15

Page {
    property alias layout: layoutControl
    property var icon
    property var title

    LayoutControl { id: layoutControl }
}
