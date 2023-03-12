import QtQuick.Controls 2.15

Page {
    property alias layout: layoutControl
    property alias icon: icon

    LayoutControl { id: layoutControl }

    Image {
        id: icon
    }
}
