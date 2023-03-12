import QtQuick 2.15 as Q

Q.Flickable {
    property alias layout: layoutControl

    boundsBehavior: Flickable.StopAtBounds

    LayoutControl { id: layoutControl }
}
