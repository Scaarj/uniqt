import QtQuick 2.15 as Q
import QtQuick.Layouts 1.15

Q.Flickable {
    property alias layout: layoutControl

    boundsBehavior: Flickable.StopAtBounds

    LayoutControl { id: layoutControl }
}
